# MIT License

# Copyright (c) 2020 Bart Bilos

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# project settings
#
# Version: 20210214

# includes of additional libraries
include squantorLibC/squantorLibC.mk
include libEmbedded/libEmbedded.mk

# project settings
MCU = LPC812M101DH20
TARGET = MCU
BOARD = PPG_sensor_V000

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
INCLUDES += -Icommon/inc -IlibMcuLL/inc -I$(PROJECT)/inc

