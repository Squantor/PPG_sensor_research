# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the lpc1125 Microcontroller
#
# Version: 20210110

# import compiler settings for the core in this microcontroller
include targets/core_CortexM0.mk

# Specific C files and linker scripts
# TODO: add ROM patches for divison routines in the startup code
FILES += targets/src/LPC112X.cpp targets/src/startup.cpp
DEFINES += -DMCU_$(MCU)
LDSCRIPT = -T"targets/ld/LPC1125.ld"

