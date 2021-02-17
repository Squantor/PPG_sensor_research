/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#ifndef PPG_SENSOR_ADC_HPP
#define PPG_SENSOR_ADC_HPP

#include <stdint.h>

#define PPG_SENSOR_FREQ     (500000)
#define PPG_SENSOR_LED_ON   (50000)
#define PPG_SENSOR_IRESET   (1000)
#define PPG_ADC_RATE        (1000000u)

#define PPG_SENSOR_ADC_LOW  (1024u)
#define PPG_SENSOR_ADC_HIGH (3072u)
#define PPG_SENSOR_ADC_MID  (2048u)

void ppgSensorSetup(void);

bool ppgSensorSamplePresent(uint16_t &sample);
uint16_t ppgSensorGetMovingAverage();

#endif