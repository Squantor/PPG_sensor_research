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
#include <board.hpp>
#include <mcu_ll.h>
#include <stream_uart.hpp>
#include <print.h>
#include <time_delay.hpp>
#include <time_interval.hpp>
#include <PPG_sensor_cmp.hpp>

int main()
{
    uint32_t currentSample;
    uint32_t captureCount = 0;
    boardInit();
    dsPuts(&streamUart, "PPG sensor V1.2 development program\n");
    ppgSensorSetup();
    while (1) 
    {
        __NOP();
        if(ppgSensorSamplePresent(currentSample))
        {
            // modulo 100 to limit amount of printing output
            printDecNzU32(&streamUart, captureCount % 100);
            dsPuts(&streamUart, ",");
            printDecNzU32(&streamUart, currentSample);
            dsPuts(&streamUart, "\n");
            captureCount++;
        }
    }
}
