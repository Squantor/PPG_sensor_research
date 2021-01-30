/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#ifndef NUCLONE_LPC824_PPG_V110
#define NUCLONE_LPC824_PPG_V110

#define CLOCK_MAIN_SOURCE   SYSCTL_MAINCLKSRC_PLLOUT

#define CLOCK_XTAL          (12000000u)
#define CLOCK_EXT_IN        (0u)
#define CLOCK_CPU           (30000000u)
#define CLOCK_AHB           (30000000u)
#define CLOCK_MAIN          (60000000u)

#define IOCON_XTAL_IN       IOCON_PIO8
#define IOCON_XTAL_OUT      IOCON_PIO9

#define IOCON_LED1_CTRL     IOCON_PIO13
#define PIN_LED1_CTRL       (13u)
#define IOCON_LED2_CTRL     IOCON_PIO12
#define PIN_LED2_CTRL       (12u)

#define IOCON_CAP_SENSE     IOCON_PIO18
#define PIN_CAP_SENSE       (18u)
#define IOCON_CMP_SENSE     IOCON_PIO17
#define PIN_CMP_SENSE       (17u)
#define IOCON_CAP_RESET     IOCON_PIO4
#define PIN_CAP_RESET       (4u)

#define IOCON_UART_TX       IOCON_PIO24
#define PIN_UART_TX         (24u)
#define IOCON_UART_RX       IOCON_PIO25
#define PIN_UART_RX         (25u)

#define UART_DEBUG          LPC_USART0
#define UART_BAUD_RATE      (230400u)

void boardInit(void);

#endif