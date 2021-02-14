/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#ifndef PPG_SENSOR_ADC_HPP
#define PPG_SENSOR_ADC_HPP

#include <stdint.h>

#define PPG_SENSOR_FREQ     (1000000)
#define PPG_SENSOR_ON       (300000)
#define PPG_SENSOR_IRESET   (1000)
#define PPG_ADC_RATE        (100000u)

void ppgSensorSetup(void);

bool ppgSensorSamplePresent(uint16_t &sample);

#endif