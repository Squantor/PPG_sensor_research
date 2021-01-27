/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <nuclone_LPC824M201DH20.hpp>
#include <mcu_ll.h>

void boardInit(void)
{
    ClockEnablePeriphClock(SYSCTL_CLOCK_SWM);
    ClockEnablePeriphClock(SYSCTL_CLOCK_IOCON);
    ClockEnablePeriphClock(SYSCTL_CLOCK_GPIO);
    // set up all pin related things
    SwmFixedPinEnable(SWM_FIXED_XTALIN, true);
    SwmFixedPinEnable(SWM_FIXED_XTALOUT, true);
    IoconPinSetMode(LPC_IOCON, IOCON_XTAL_IN, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_XTAL_OUT, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_LED1_CTRL, PIN_MODE_INACTIVE);
    IoconPinSetMode(LPC_IOCON, IOCON_LED2_CTRL, PIN_MODE_INACTIVE);
    GpioSetPinState(LPC_GPIO_PORT, 0, PIN_LED1_CTRL, false);
    GpioSetPinState(LPC_GPIO_PORT, 0, PIN_LED2_CTRL, true);
    GpioSetPinDIROutput(LPC_GPIO_PORT, 0, PIN_LED1_CTRL);
    GpioSetPinDIROutput(LPC_GPIO_PORT, 0, PIN_LED2_CTRL);

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

    SysTick_Config(CLOCK_AHB / TICKS_PER_S);
}
