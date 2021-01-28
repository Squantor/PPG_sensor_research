/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
/*
 * PPG sensor demo program, now just initializes the SCT and times the
 * time until the comparator flips.
 */
#include <nuclone_LPC824M201DH20_PPG_V110.hpp>
#include <mcu_ll.h>
#include <stream_uart.hpp>
#include <print.h>
#include <time_delay.hpp>
#include <time_interval.hpp>

#define PPG_SENSOR_FREQ     (1000000)
#define PPG_SENSOR_IRESET   (10000)

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

void ppgSensorSetup(void)
{
    captureCount = 0;
    ClockEnablePeriphClock(SYSCTL_CLOCK_SWM);
    ClockEnablePeriphClock(SYSCTL_CLOCK_IOCON);
    IoconPinSetMode(LPC_IOCON, IOCON_LED1_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_LED2_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_SENSE, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_RESET, PIN_MODE_INACTIVE);
    SwmMovablePinAssign(SWM_SCT_OUT0_O, PIN_LED1_CTRL);
    SwmMovablePinAssign(SWM_SCT_OUT1_O, PIN_LED2_CTRL);
    SwmMovablePinAssign(SWM_SCT_OUT2_O, PIN_CAP_RESET);
    // connect comparator output to SCT 0 input
    SwmMovablePinAssign(SWM_SCT_IN0_I, PIN_CMP_SENSE);
    ClockDisablePeriphClock(SYSCTL_CLOCK_IOCON);
    ClockDisablePeriphClock(SYSCTL_CLOCK_SWM);
    
    SctInit(LPC_SCT);

    SctSetConfig(LPC_SCT, SCT_CONFIG_32BIT_COUNTER | SCT_CONFIG_AUTOLIMIT_U);

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
    // Event 2 is triggered by the input (either external or internal comparator) and performs a capture
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
    SctOutputSet(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_0_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT);
    // LED 2 control
    SctOutputSet(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_0_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT);
    SctOutputSet(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_1_BIT | SCT_EVENT_2_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_2_VALUE, SCT_EVENT_0_BIT);

    SctOutput(LPC_SCT, SCT_OUTPUT_STATE(SCT_OUTPUT_0_VALUE, 1));
    SctOutput(LPC_SCT, SCT_OUTPUT_STATE(SCT_OUTPUT_1_VALUE, 1));
    SctOutput(LPC_SCT, SCT_OUTPUT_STATE(SCT_OUTPUT_2_VALUE, 0));

    SctSetEventInt(LPC_SCT, SCT_EVENT_2_BIT);
    NVIC_EnableIRQ(SCT_IRQn);

    SctClearControl(LPC_SCT, SCT_CTRL_HALT_U);
}

int main()
{
    uint32_t currentCaptureCount = 0;
    boardInit();
    dsPuts(&streamUart, "PPG sensor V1.1 development program\n");
    ppgSensorSetup();
    while (1) {
        if(currentCaptureCount != captureCount)
        {
            currentCaptureCount = captureCount;
            // modulo 100 to limit amount of printing output
            printDecNzU32(&streamUart, currentCaptureCount % 100);
            dsPuts(&streamUart, ",");
            printDecNzU32(&streamUart, captureValue);
            dsPuts(&streamUart, "\n");
        }
    }
}
