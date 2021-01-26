# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the PC bare target
# this is just a PC target with no libraries at all
#
# Version: 20201218

# Tool settings
MAKE := make
MKDIR := mkdir
RM := rm
TOOLCHAIN_PREFIX := 
C_COMPILER := gcc
CXX_COMPILER := g++
GDB := gdb
SIZE := size
AR := ar
OBJDUMP := objdump
OBJCOPY := objcopy
TOUCH := touch

#needed files for this target
FILES += targets/src/PC_bare_startup.s targets/src/PC_bare_exit.c targets/src/PC_bare_start.c
INCLUDES += -Itargets/inc

# valid configurations like debug, release test, etcetera
CONFIGS = debug release

#default flags
CFLAGS = -std=gnu11 -Wall -Wextra -c -nostdlib -fomit-frame-pointer -fno-stack-protector -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-unroll-loops -fmerge-all-constants -fno-ident -mfpmath=sse -mfancy-math-387 -ffunction-sections -fdata-sections
CFLAGS_debug = -O0 -g3
CFLAGS_release = -O2 -g
CXXFLAGS = -std=c++17 -Wall -Wextra -c
CXXFLAGS_debug = -O0 -g3
CXXFLAGS_release = -O2 -g
ASMFLAGS = -c -x assembler-with-cpp
LDFLAGS += -static -nostdlib -z norelro -nolibc
DEFINES_release += -DNDEBUG
DEFINES_debug += -DDEBUG
DEFINES +=
