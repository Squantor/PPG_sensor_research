# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the Cortex-M0+ Core
#
# Version: 20200508

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
CFLAGS += -mcpu=cortex-m0plus -mthumb
CXXFLAGS += -mcpu=cortex-m0plus -mthumb
ASMFLAGS += -mcpu=cortex-m0plus -mthumb
LDFLAGS += -mcpu=cortex-m0plus -mthumb

