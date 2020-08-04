/*
MIT License

Copyright (c) 2020 Bart Bilos

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

/*
Simple uart example
*/

#include <board.hpp>
#include <mcu_ll.h>
#include <stream_uart.hpp>
#include <strings.hpp>
#include <print.h>
#include <time_delay.hpp>
#include <time_interval.hpp>

#define PPG_SENSOR_FREQ     (1000000)
#define PPG_SENSOR_DUTY     (PPG_SENSOR_FREQ / 10)

extern "C" {
    void SCT_IRQHandler(void)
    {
        __NOP();
        SctClearEventFlag(LPC_SCT, SCT_EVENT_1_BIT);
    }

}

void ppgSensorSetup(void)
{
    ClockEnablePeriphClock(SYSCTL_CLOCK_SWM);
    ClockEnablePeriphClock(SYSCTL_CLOCK_IOCON);
    IoconPinSetMode(LPC_IOCON, IOCON_LED_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_SENSE, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_RESET, PIN_MODE_INACTIVE);
    SwmMovablePinAssign(SWM_CTOUT_0_O, PIN_LED_CTRL);
    SwmMovablePinAssign(SWM_CTOUT_1_O, PIN_CAP_RESET);
    // connect comparator output to SCT 0 input
    SwmMovablePinAssign(SWM_ACMP_O_O, PIN_CMP_OUT);
    SwmMovablePinAssign(SWM_CTIN_0_I, PIN_CMP_OUT);
    SwmFixedPinEnable(SWM_FIXED_ACMP_I1, true);
    ClockDisablePeriphClock(SYSCTL_CLOCK_IOCON);
    ClockDisablePeriphClock(SYSCTL_CLOCK_SWM);
    
    SctInit(LPC_SCT);

    SctSetConfig(LPC_SCT, SCT_CONFIG_32BIT_COUNTER | SCT_CONFIG_AUTOLIMIT_U);

    SctMatchU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);
    SctMatchReloadU(LPC_SCT, SCT_MATCH_0, PPG_SENSOR_FREQ);

    SctSetEventStateMask(LPC_SCT, SCT_EVENT_0_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_0_VAL, SCT_EV_CTRL_MATCHSEL(SCT_MATCH_0) | SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_MATCH));
    SctSetEventStateMask(LPC_SCT, SCT_EVENT_1_VAL, SCT_STATE_0_BIT | SCT_STATE_1_BIT);
    SctSetEventControl(LPC_SCT, SCT_EVENT_1_VAL, 
        SCT_EV_CTRL_INSEL | 
        SCT_EV_CTRL_IOSEL(SCT_INPUT_0_VALUE) | 
        SCT_EV_CTRL_IOCOND(SCT_IOCOND_HIGH) |
        SCT_EV_CTRL_COMBMODE(SCT_COMBMODE_IO) );
    SctRegisterModeU(LPC_SCT, 
        SCT_REGMODE_U(SCT_MATCH_0, SCT_REGMODE_CAPTURE) | 
        SCT_REGMODE_U(SCT_MATCH_1, SCT_REGMODE_MATCH)   );
    SctCaptureControlU(LPC_SCT, SCT_CAPTURE_1, SCT_EVENT_1_BIT);
    
    SctOutputSet(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_0_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_0_VALUE, SCT_EVENT_1_BIT);
    SctOutputSet(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_1_BIT);
    SctOutputClear(LPC_SCT, SCT_OUTPUT_1_VALUE, SCT_EVENT_0_BIT);

    SctOutput(LPC_SCT, SCT_OUTPUT_STATE(SCT_OUTPUT_0_VALUE, 1));
    SctOutput(LPC_SCT, SCT_OUTPUT_STATE(SCT_OUTPUT_1_VALUE, 0));

    SctSetEventInt(LPC_SCT, SCT_EVENT_1_BIT);
    NVIC_EnableIRQ(SCT_IRQn);

    // setup comparator
    AcmpInit();
    AcmpSetHysteresis(LPC_CMP, ACMP_HYS_20MV);
    AcmpSetEdgeSelection(LPC_CMP, ACMP_EDGESEL_BOTH);
    AcmpSetPosVoltRef(LPC_CMP, ACMP_POSIN_ACMP_I1);
    // TODO setup voltage ladder 
    AcmpSetNegVoltRef(LPC_CMP, ACMP_NEGIN_INT_REF);

    SctClearControl(LPC_SCT, SCT_CTRL_HALT_U);
}

int main()
{
    boardInit();
    dsPuts(&streamUart, strHello);
    ppgSensorSetup();
    while (1) {
    }
}
