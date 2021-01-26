# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the lpc845 Microcontroller
#
# Version: 20210108

# import compiler settings for the core in this microcontroller
include targets/core_CortexM0plus.mk

# Specific C files and linker scripts
FILES += targets/src/LPC845.cpp targets/src/startup_LPC84X.cpp \
targets/src/LPC82X_aeabi_romdiv_patch.s
DEFINES += -DMCU_$(MCU)
LDSCRIPT = -T"targets/ld/LPC845.ld"

