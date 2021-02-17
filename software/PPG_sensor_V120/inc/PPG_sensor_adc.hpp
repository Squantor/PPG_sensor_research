/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#ifndef PPG_SENSOR_ADC_HPP
#define PPG_SENSOR_ADC_HPP

#include <stdint.h>

#define PPG_SENSOR_FREQ         (1000000)

#define PPG_SENSOR_IRESET       (1000)
#define PPG_ADC_RATE            (1000000u)

#define PPG_SENSOR_LED_MAX      (500000)
#define PPG_SENSOR_LED_DEFAULT  (100000)
#define PPG_SENSOR_LED_MIN      (20000)

#define PPG_SENSOR_LED_STEP     (20000)

#define PPG_SENSOR_ADC_LOW  (1024u)
#define PPG_SENSOR_ADC_HIGH (3072u)
#define PPG_SENSOR_ADC_MID  (2048u)

void ppgSensorSetup(void);

bool ppgSensorSamplePresent(uint16_t &sample);

void ppgSetLedOnTime(uint32_t value);

#endif