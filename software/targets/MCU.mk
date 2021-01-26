# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the MCU target
#
# Version: 20201220

ifndef MCU
$(error MCU is not defined!)
else
include targets/$(MCU).mk
endif

# valid configurations like debug, release, test, define them here
CONFIGS = debug release

# configuration specific flags
CFLAGS += -std=gnu11 -Wall -Wextra -Wno-main -fno-common -c -ffunction-sections -fdata-sections
CFLAGS_debug += -O0 -g3
CFLAGS_release += -Os -g
CXXFLAGS += -std=c++17 -Wall -Wextra -Wno-main -fno-common -c -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions
CXXFLAGS_debug += -Og -g3
CXXFLAGS_release += -Os -g
ASMFLAGS += -c -x assembler-with-cpp
LDFLAGS +=  -nostdlib -Wl,--gc-sections -Wl,-print-memory-usage -Wl,-Ltargets/ld
DEFINES += -D$(BOARD)
DEFINES_release += -DNDEBUG
DEFINES_debug += -DDEBUG
LIBS += -lgcc

