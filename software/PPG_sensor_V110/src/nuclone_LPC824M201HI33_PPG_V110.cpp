/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <board.hpp>
#include <mcu_ll.h>

void boardInit(void)
{
    ClockEnablePeriphClock(SYSCTL_CLOCK_SWM);
    ClockEnablePeriphClock(SYSCTL_CLOCK_IOCON);
    ClockEnablePeriphClock(SYSCTL_CLOCK_GPIO);
    // Crystal oscillator related IO settings
    SwmFixedPinEnable(SWM_FIXED_XTALIN, true);
    SwmFixedPinEnable(SWM_FIXED_XTALOUT, true);
    IoconPinSetMode(LPC_IOCON, IOCON_XTAL_IN, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_XTAL_OUT, PIN_MODE_INACTIVE);
    // uart related IO settings
    IoconPinSetMode(LPC_IOCON, IOCON_UART_RX, PIN_MODE_PULLUP);
    IoconPinSetMode(LPC_IOCON, IOCON_UART_TX, PIN_MODE_INACTIVE);
    SwmMovablePinAssign(SWM_U0_TXD_O, PIN_UART_TX);
    SwmMovablePinAssign(SWM_U0_RXD_I, PIN_UART_RX);
    // PPG sensor related IO settings
    IoconPinSetMode(LPC_IOCON, IOCON_LED1_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_LED2_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CMP_SENSE, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_SENSE, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_CAP_RESET, PIN_MODE_INACTIVE);
    SwmMovablePinAssign(SWM_SCT_OUT0_O, PIN_LED1_CTRL);
    SwmMovablePinAssign(SWM_SCT_OUT1_O, PIN_LED2_CTRL);
    SwmMovablePinAssign(SWM_SCT_OUT2_O, PIN_CAP_RESET);
    SwmMovablePinAssign(SWM_SCT_IN0_I, PIN_CMP_SENSE);

    ClockDisablePeriphClock(SYSCTL_CLOCK_IOCON);
    ClockDisablePeriphClock(SYSCTL_CLOCK_SWM);

    // setup system clocks
    ClockSetPLLBypass(false, false);
    SysctlPowerUp(SYSCTL_SLPWAKE_SYSOSC_PD);
    ClockSetSystemPLLSource(SYSCTL_PLLCLKSRC_SYSOSC);
    FmcSetFlashAccess(FLASHTIM_30MHZ_CPU);
    SysctlPowerDown(SYSCTL_SLPWAKE_SYSPLL_PD);
    ClockSetupSystemPLL(4, 1);
    SysctlPowerUp(SYSCTL_SLPWAKE_SYSPLL_PD);
    while (!ClockIsSystemPLLLocked());
    ClockSetSysClockDiv(2);
    ClockSetMainClockSource(SYSCTL_MAINCLKSRC_PLLOUT);

        // setup UART peripheral
    UartInit(UART_DEBUG);
    UartConfigData(UART_DEBUG, UART_CFG_DATALEN_8 | UART_CFG_PARITY_NONE | UART_CFG_STOPLEN_1);
    ClockSetUSARTNBaseClockRate((UART_BAUD_RATE * 16), true);
    UartSetBaud(UART_DEBUG, UART_BAUD_RATE);
    UartEnable(UART_DEBUG);
    UartTXEnable(UART_DEBUG);

    SysTick_Config(CLOCK_AHB / TICKS_PER_S);
}

