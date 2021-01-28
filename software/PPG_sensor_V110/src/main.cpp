/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
/*
 * Simple example blink program for the Nuclone LPC824M201DH20.
 * Using 12MHz Crystal + PLL as the clock source with systick.
 */
#include <nuclone_LPC824M201DH20_PPG_V110.hpp>
#include <mcu_ll.h>

volatile int var;

extern "C" 
{
    void SysTick_Handler(void)
    {
        __NOP();
        GpioSetPinToggle(LPC_GPIO_PORT, 0, PIN_LED1_CTRL);
        GpioSetPinToggle(LPC_GPIO_PORT, 0, PIN_LED2_CTRL);
    }
}

int main()
{
    boardInit();
    while (1) {
        var ^= 0x55;
    }
}
