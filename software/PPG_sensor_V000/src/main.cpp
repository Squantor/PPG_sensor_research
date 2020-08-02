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

void ppgSensorSetup(void)
{
    // SCT: Enable clock
    // SCT: Disable reset
    SctInit(LPC_SCT);
    // SCT: interrupt?
    // SCT: SWM inputs/outputs
    SwmMovablePinAssign(SWM_CTOUT_0_O, PIN_LED_CTRL);
    // SCT: 32 bit timer
    SctConfig(LPC_SCT, 
        SCT_CONFIG_32BIT_COUNTER | 
        SCT_CONFIG_CLKMODE_BUSCLK | 
        SCT_CONFIG_AUTOLIMIT_U );
    SctSetControl(LPC_SCT, );
    // SCT: Preload
    SctSetCount(LPC_SCT, 0);
    // SCT: setup match events
    // match 0 is hardwired to reset the counter
    SctSetMatchCount(LPC_SCT, SCT_MATCH_0, 30000000);
    SctSetMatchReload(LPC_SCT, SCT_MATCH_0, 0);
    LPC_SCT->EV[SCT_MATCH_0].CTRL = 1 << 12;
	LPC_SCT->EV[SCT_MATCH_0].STATE = 1;
    LPC_SCT->OUT[0].SET = 1;
	LPC_SCT->OUT[0].CLR = 1 << SCT_MATCH_1;
    // TODO match 0 event should clear the LED output
    SctSetMatchCount(LPC_SCT, SCT_MATCH_1, 300000);
    LPC_SCT->EV[SCT_MATCH_1].CTRL = (1 << 12);
	LPC_SCT->EV[SCT_MATCH_1].STATE = 1;
    LPC_SCT->OUT[1].SET = 1;
	LPC_SCT->OUT[1].CLR = 1 << SCT_MATCH_1;
    // TODO M
    // SCT: reload value
    
    // SCT: capture event is later
    // SCT: start timer by writing to CTRL reg

}

int main()
{
    uint8_t character;
    boardInit();
    dsPuts(&streamUart, strHello);
    while (1) {
    }
}
