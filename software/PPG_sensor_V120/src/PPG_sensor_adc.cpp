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

util::RingBuffer<uint32_t, 15> ppgBuf;
util::MovingAverage<uint32_t, 2> filter;

extern "C" {
    void SCT_IRQHandler(void)
    {
        uint32_t captureCurrent;
        SctCaptureU(LPC_SCT, SCT_CAPTURE_2, &captureCurrent);
        ppgBuf.pushFront(captureCurrent);
        SctClearEventFlag(LPC_SCT, SCT_EVENT_2_BIT);
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

    SctClearControl(LPC_SCT, SCT_CTRL_HALT_U);
}

/**
 * @brief   Checks if a new PPG sample is present and returns it
 * @param   sample  : reference to a sample buffer
 * @return  true if a new sample has been returned
 * @note    
 */
bool ppgSensorSamplePresent(uint32_t &sample)
{
    uint32_t temp;
    if(ppgBuf.popBack(temp))
    {
        filter.add(temp);
        sample = filter.get();
        return true;
    }
    return false;
}