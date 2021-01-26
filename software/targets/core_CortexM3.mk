# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the Cortex-M3 Core
#
# Version: 20200509

# Tool settings
MAKE := make
MKDIR := mkdir
RM := rm
TOOLCHAIN_PREFIX := arm-none-eabi-
C_COMPILER := gcc
CXX_COMPILER := g++
GDB := gdb
SIZE := size
AR := ar
OBJDUMP := objdump
OBJCOPY := objcopy
TOUCH := touch

# Core flags
CFLAGS += -mcpu=cortex-m3 -mthumb
CXXFLAGS += -mcpu=cortex-m3 -mthumb
ASMFLAGS += -mcpu=cortex-m3 -mthumb
LDFLAGS += -mcpu=cortex-m3 -mthumb

