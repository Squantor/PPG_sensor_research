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
#include <moving_average.hpp>

util::MovingAverage<uint16_t, 10> ledScaleInput(PPG_SENSOR_ADC_MID);

int main()
{
    uint16_t currentSample;
    uint32_t ledOnTime = PPG_SENSOR_LED_DEFAULT;

    boardInit();
    ppgSensorSetup();
    dsPuts(&streamUart, "PPG sensor V1.2 development program\n");
    while (1) 
    {
        __NOP();
        if(ppgSensorSamplePresent(currentSample))
        {
            ledScaleInput.add(currentSample);
            if( ledScaleInput.get() > PPG_SENSOR_ADC_HIGH && 
                ledOnTime > PPG_SENSOR_LED_MIN )
            {
                ledScaleInput.reset(PPG_SENSOR_ADC_MID);
                ledOnTime -= PPG_SENSOR_LED_STEP;
                ppgSetLedOnTime(ledOnTime);
            }
            else if(ledScaleInput.get() < PPG_SENSOR_ADC_LOW &&
                    ledOnTime < PPG_SENSOR_LED_MAX )
            {
                ledScaleInput.reset(PPG_SENSOR_ADC_MID);
                ledOnTime += PPG_SENSOR_LED_STEP;
                ppgSetLedOnTime(ledOnTime);
            }
            dsPuts(&streamUart, "/*");
            printDecNzU16(&streamUart, currentSample);
            dsPuts(&streamUart, ",");
            printDecNzU16(&streamUart, ledScaleInput.get());
            dsPuts(&streamUart, ",");
            printDecNzU32(&streamUart, ledOnTime);
            dsPuts(&streamUart, "*/\n");
        }
    }
}
