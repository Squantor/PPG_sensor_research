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
#include <PPG_sensor_adc.hpp>

int main()
{
    uint16_t currentSample;
    uint32_t captureCount = 0;
    boardInit();
    ppgSensorSetup();
    dsPuts(&streamUart, "PPG sensor V1.2 development program\n");
    while (1) 
    {
        __NOP();
        if(ppgSensorSamplePresent(currentSample))
        {
            // modulo 100 to limit amount of printing output
            
            dsPuts(&streamUart, "/*");
            printDecNzU16(&streamUart, currentSample);
            dsPuts(&streamUart, ",");
            printDecNzU16(&streamUart, ppgSensorGetMovingAverage());
            dsPuts(&streamUart, "*/\n");
            captureCount++;
        }
    }
}
