/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <board.hpp>
#include <mcu_ll.h>
#include <PPG_sensor_cmp.hpp>

volatile uint32_t captureCount;
volatile uint32_t captureValue;

extern "C" {
    void SCT_IRQHandler(void)
    {
        uint32_t captureCurrent;
        captureCount++;
        SctCaptureU(LPC_SCT, SCT_CAPTURE_2, &captureCurrent);
        captureValue = captureCurrent;
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
    captureCount = 0;
    
    SctInit(LPC_SCT);

    SctSetConfig(LPC_SCT, SCT_CONFIG_32BIT_COUNTER | SCT_CONFIG_AUTOLIMIT_U);

    inmuxSetSCTInMux(LPC_INMUX, SCT_INMUX_0, SCT_INP_IN0);

    SctMatchU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);
    SctMatchU(LPC_SCT, SCT_MATCH_1, PPG_SENSOR_FREQ-PPG_SENSOR_IRESET);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_1, PPG_SENSOR_FREQ-PPG_SENSOR_IRESET);

    // Event 0 determines the sampling frequency
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_0_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_0_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_0) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    // Event 1 triggers the integrator capacitor reset
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_1_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_1_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_1) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    // Event 2 is triggered by the comparator and performs a capture
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_2_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_2_VAL, 
        SCT_EV_CTRL_INSEL | 
        SCT_EV_CTRL_IOSEL(SCT_INPUT_0_VALUE) | 
        SCT_EV_CTRL_IOCOND(SCT_IOCOND_RISE) |
        SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_IO) );
    SctRegisterModeU(LPC_SCT, 
        SCT_REGMODE_U(SCT_MATCH_0, SCT_REGMODE_MATCH) | 
        SCT_REGMODE_U(SCT_MATCH_1, SCT_REGMODE_MATCH) | 
        SCT_REGMODE_U(SCT_MATCH_2, SCT_REGMODE_CAPTURE) );
    SctCaptureControlU(LPC_SCT, SCT_CAPTURE_2, SCT_EVENT_2_BIT);
    
    // LED1 control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_0_BIT); // enable LED at start
    SctOutputClear(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT); // disable led at end or capture
    // LED 2 control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_0_BIT); 
    SctOutputClear(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT);
    // integrator reset control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_0_BIT);
    // setup outputs to initial values
    SctOutput(LPC_SCT,  
        SCT_OUTPUT_STATE(SCT_OUTPUT_0_VALUE, 1) |
        SCT_OUTPUT_STATE(SCT_OUTPUT_1_VALUE, 1) | 
        SCT_OUTPUT_STATE(SCT_OUTPUT_2_VALUE, 0) );

    SctSetEventInt(LPC_SCT, SCT_EVENT_2_BIT);
    NVIC_EnableIRQ(SCT_IRQn);

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
    static uint32_t currentCaptureCount = 0;
    if(currentCaptureCount != captureCount)
    {
        currentCaptureCount = captureCount;
        sample = captureValue;
        return true;
    }
    return false;
}