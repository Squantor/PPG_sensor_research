# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20210126

# includes of additional libraries

include libMcuLL/libMcuLL.mk
include squantorLibC/squantorLibC.mk
include libEmbedded/libEmbedded.mk
include squantorLibEmbeddedC/squantorLibEmbeddedC.mk

# project settings
MCU = LPC812M101DH20
TARGET = MCU
BOARD = PPG_sensor_V100

# project sources
FILES +=  \
common/src/arm_systick.c \
common/src/delay.cpp \
common/src/time_delay.cpp \
common/src/time_interval.cpp \
common/src/stream_uart.cpp \
$(PROJECT)/src/strings.cpp \
$(PROJECT)/src/$(BOARD).cpp \
$(PROJECT)/src/main.cpp

LIBS +=
INCLUDES += -Icommon/inc -I$(PROJECT)/inc
DEFINES += -D"$(BOARD)"

