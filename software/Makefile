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

# Generic project makefile
# Heavily inspired by: https://github.com/bronson/makefile-death
#
# Version: 20200722

# User definable settings are here

# Define a default project to compile, replace with wanted project
PROJECT ?= PC
# Verbose output?
VERBOSE ?= 0

# --- nothing user definable below ---

# Project settings like sources and target specifics
ifndef PROJECT
$(error no PROJECT defined!)
else
ifneq ("$(wildcard $(PROJECT)/$(PROJECT).mk)","")
include $(PROJECT)/$(PROJECT).mk
else
$(error $(PROJECT)/$(PROJECT).mk does not exist!)
endif
endif
# Target definition handling

ifndef TARGET
$(error Target is not defined!)
else
include targets/$(TARGET).mk
endif

# --- build engine ---

# load first config as default configuration
CONFIG ?= $(firstword $(CONFIGS))
# check if it is a valid configuration
ifeq (, $(findstring $(CONFIG),$(CONFIGS)))
$(error Unknown configuration $(CONFIG)!)
endif

# transform build specific variables to variables used by the build
COPYVARS += SOURCE CFLAGS CXXFLAGS INCLUDES LIBS DEFINES
$(foreach V,$(COPYVARS),$(eval $(V) += $$($(V)_$(CONFIG))))
# specific handling for linker script
LDFLAGS += $(LDSCRIPT)
# add defines to flags
CFLAGS += $(DEFINES)
CXXFLAGS += $(DEFINES)
ASMFLAGS += $(DEFINES)

# for a multi project build pipeline
ifdef PROJECT
BIN_PATH := bin/$(PROJECT)/$(CONFIG)
OBJ_PATH := build/$(PROJECT)/$(CONFIG)
EXECUTABLE := $(BIN_PATH)/$(PROJECT).elf
SIZELOG_PATH := $(PROJECT)/
else
BIN_PATH := bin/$(CONFIG)
OBJ_PATH := build/$(CONFIG)
EXECUTABLE := $(BIN_PATH)/$(PROJECT).elf
endif

# create lists of prerequisites for the build
OBJECTS += $(addprefix $(OBJ_PATH)/, $(addsuffix .o,$(FILES)))
DEPS = $(OBJECTS:.o=.d)
COMMONDEPS+= $(OBJ_PATH)/build-tag $(BIN_PATH)/build-tag

# Verbosity handling
ifeq ($(VERBOSE),1)
  C = 
  U = @true
else
  C = @
  U = @echo
endif

all: post-build

main-build: pre-build $(EXECUTABLE)
	
.PHONY: all

-include $(DEPS)

doc:
	$(C)( cat doxygen/Doxyfile ; echo "@INCLUDE = $(PROJECT)/$(PROJECT).doxy" ) | doxygen -
.PHONY: doc

$(BIN_PATH)/build-tag:
	$(C)$(MKDIR) -p $(BIN_PATH)
	$(C)$(TOUCH) $@

$(OBJ_PATH)/build-tag:
	$(C)$(MKDIR) -p $(OBJ_PATH)
	$(C)$(TOUCH) $@

$(EXECUTABLE): $(OBJECTS)
	$(U) "Linking $(EXECUTABLE)"
	$(C)$(TOOLCHAIN_PREFIX)$(CXX_COMPILER) $(LDFLAGS) $(OBJECTS) -Xlinker -Map="$@.map" -o $@ $(LIBS)
	$(C)date >> $(SIZELOG_PATH)size$(CONFIG).log
	$(C)$(TOOLCHAIN_PREFIX)$(SIZE) $@ >> $(SIZELOG_PATH)size$(CONFIG).log
	$(C)$(TOOLCHAIN_PREFIX)$(OBJCOPY) -R .stack -O binary $@ $(BIN_PATH)/$(PROJECT).bin
	$(C)$(TOOLCHAIN_PREFIX)$(OBJDUMP) -h -S "$@" > "$(BIN_PATH)/$(PROJECT).lss"

$(OBJ_PATH)/%.c.o: %.c $(COMMONDEPS)
	$(U) "C   $(basename $(notdir $@))"
	$(C)$(MKDIR) -p $(dir $@) 
	$(C)$(TOOLCHAIN_PREFIX)$(C_COMPILER) $(CFLAGS) $(INCLUDES) -MP -MMD -c $< -o $@

$(OBJ_PATH)/%.cpp.o: %.cpp $(COMMONDEPS)
	$(U) "C++ $(basename $(notdir $@))"
	$(C)$(MKDIR) -p $(dir $@) 
	$(C)$(TOOLCHAIN_PREFIX)$(CXX_COMPILER) $(CXXFLAGS) $(INCLUDES) -MP -MMD -c $< -o $@

$(OBJ_PATH)/%.s.o: %.s $(COMMONDEPS)
	$(U) "ASM $(basename $(notdir $@))"
	$(C)$(MKDIR) -p $(dir $@) 
	$(C)$(TOOLCHAIN_PREFIX)$(C_COMPILER) $(ASMFLAGS) $(INCLUDES) -MP -MMD -c $< -o $@

clean: $(COMMONDEPS)
	$(U) "Cleaning"
	$(C)$(RM) -r bin
	$(C)$(RM) -r build
.PHONY: clean

# project specific makefile rules
include $(PROJECT)/$(PROJECT)_rules.mk

# Function used to check variables. Use on the command line:
# make print-VARNAME
# Useful for debugging
print-%: ; @echo $*=$($*)
.Phony: print-%




