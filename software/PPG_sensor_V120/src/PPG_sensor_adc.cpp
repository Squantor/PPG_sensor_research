/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <board.hpp>
#include <mcu_ll.h>
#include <PPG_sensor_adc.hpp>
#include <ringbuf.hpp>
#include <moving_average.hpp>

util::RingBuffer<uint16_t, 15> ppgBuf;
util::MovingAverage<uint16_t, 2> filter;

extern "C" {
    void ADC_SEQA_IRQHandler(void)
    {
        uint32_t adcResult = AdcGetDataReg(LPC_ADC, ADC_CAP_SENSE);
        if(adcResult & ADC_DR_DATAVALID)
        {
            uint16_t sample = ADC_DR_RESULT(adcResult);
            ppgBuf.pushFront(sample);
        }
        AdcClearFlags(LPC_ADC, AdcGetFlags(LPC_ADC));
    }
}

/**
 * @brief   Sets up the needed peripherals PPG sensing
 * @note    The SCT is used for the comparator based PPG sensor, iocon and pin muxing should
 * be setup beforehand.
 */
void ppgSensorSetup(void)
{  
    ppgBuf.reset();
    filter.reset();

    
    SctInit(LPC_SCT);
    // setup ADC clock division in preparation for ADC calibration
    AdcInit(LPC_ADC, ADC_CR_CLKDIV(CLOCK_AHB / ADC_CAL_CLOCK));
    AdcStartCalibration(LPC_ADC);
    while(AdcIsCalibrationDone(LPC_ADC) == false)
        ;
    AdcSetDivider(LPC_ADC, CLOCK_AHB / PPG_ADC_RATE);

    // setup ADC
    AdcSetupSequencer(LPC_ADC, ADC_SEQA_IDX, 
        ADC_SEQ_CTRL_CHANSEL(ADC_CAP_SENSE) | 
        ADC_SEQ_CTRL_HWTRIG_PINTRIG0 | 
        ADC_SEQ_CTRL_HWTRIG_POLPOS |
        ADC_SEQ_CTRL_MODE_EOS );

    ClockEnablePeriphClock(SYSCTL_CLOCK_SWM);
    SwmFixedPinEnable(SWM_CAP_SENSE, true);
    SwmMovablePinAssign(SWM_ADC_PINTRIG0_I, PIN_LED1_CTRL);
    ClockDisablePeriphClock(SYSCTL_CLOCK_SWM);

    SctSetConfig(LPC_SCT, SCT_CONFIG_32BIT_COUNTER | SCT_CONFIG_AUTOLIMIT_U);

    inmuxSetSCTInMux(LPC_INMUX, SCT_INMUX_0, SCT_INP_IN0);

    SctMatchU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);
    SctMatchU(LPC_SCT, SCT_MATCH_1, PPG_SENSOR_FREQ-PPG_SENSOR_IRESET);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_1, PPG_SENSOR_FREQ-PPG_SENSOR_IRESET);
    SctMatchU(LPC_SCT, SCT_MATCH_2, PPG_SENSOR_ON);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_2, PPG_SENSOR_ON);

    // Event 0 determines the sampling frequency
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_0_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_0_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_0) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    // Event 1 triggers the integrator capacitor reset
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_1_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_1_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_1) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    // Event 3 turns the LED off and triggers a ADC sample
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_3_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_3_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_2) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    SctRegisterModeU(LPC_SCT, 
        SCT_REGMODE_U(SCT_MATCH_0, SCT_REGMODE_MATCH) | 
        SCT_REGMODE_U(SCT_MATCH_1, SCT_REGMODE_MATCH) | 
        SCT_REGMODE_U(SCT_MATCH_2, SCT_REGMODE_MATCH) );
    
    // LED1 control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_3_BIT); // disable led at end
    SctOutputClear(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_0_BIT); // enable LED at start
    // LED 2 control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_3_BIT); // disable led at end
    SctOutputClear(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_0_BIT); // enable LED at start
    // integrator reset control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_1_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_0_BIT);
    // setup outputs to initial values
    SctOutput(LPC_SCT,  
        SCT_OUTPUT_STATE(SCT_OUTPUT_0_VALUE, 0) |
        SCT_OUTPUT_STATE(SCT_OUTPUT_1_VALUE, 0) | 
        SCT_OUTPUT_STATE(SCT_OUTPUT_2_VALUE, 0) );

    AdcEnableInt(LPC_ADC, ADC_INTEN_SEQA_ENABLE);
    NVIC_EnableIRQ(ADC_SEQA_IRQn);
    AdcEnableSequencer(LPC_ADC, ADC_SEQA_IDX);
    SctClearControl(LPC_SCT, SCT_CTRL_HALT_U);
}

/**
 * @brief   Checks if a new PPG sample is present and returns it
 * @param   sample  : reference to a sample buffer
 * @return  true if a new sample has been returned
 * @note    
 */
bool ppgSensorSamplePresent(uint16_t &sample)
{
    return ppgBuf.popBack(sample);
}