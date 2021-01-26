/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
/*

Linker file for the STM32F103C8 microcontroller from ST.

Based on the unified cortex startup code by Paul Sokolovsky.

*/

MEMORY
{
    rom   :   ORIGIN = 0x08000000, LENGTH = 64K
    ram   :   ORIGIN = 0x20000000, LENGTH = 20K
}

/* Include generic main link script. Note: it will be searched in -L paths. */
INCLUDE linkscript.ld
