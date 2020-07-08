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

# settings for the PC target
#
# Version: 20200426

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

# valid configurations like debug, release test, etcetera
CONFIGS = debug release

#default flags
CFLAGS = -std=gnu11 -Wall -Wextra -c
CFLAGS_debug = -O0 -g3
CFLAGS_release = -O2 -g
CXXFLAGS = -std=c++17 -Wall -Wextra -c
CXXFLAGS_debug = -O0 -g3
CXXFLAGS_release = -O2 -g
ASMFLAGS = -c -x assembler-with-cpp
LDFLAGS +=
DEFINES_release += -DNDEBUG
DEFINES_debug += -DDEBUG
DEFINES += -DMCU_$(MCU)
