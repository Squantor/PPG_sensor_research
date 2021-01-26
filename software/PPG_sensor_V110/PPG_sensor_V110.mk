# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20210113

#additional library includes
include libMcuLL/libMcuLL.mk
include squantorLibC/squantorLibC.mk
include squantorLibEmbeddedC/squantorLibEmbeddedC.mk
include libEmbedded/libEmbedded.mk

# project settings
MCU = LPC824M201DH20
TARGET = MCU
BOARD = nuclone_LPC824M201DH20

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -I$(PROJECT)/inc


