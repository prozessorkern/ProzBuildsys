################################################################################
#
#	author: 	Stefan Strobel
#
#	purpose:	
#
#	license:	This file is subject to the terms and conditions defined in
#				LICENSE file which is part of this code package
#
################################################################################

include toolchain.mk

LIST := toolchain/avr8.mk toolchain/armNoneEabiGcc.mk

####### Compiler, tools and options

CC					= armcc
ASM					= armasm
LINKER				= armlink
BIN					= fromelf
LIB					= armar



PARAM := test


####### Major targets

.Phony: test test_own %.mk

test : test_own $(LIST)
	

test_own :
	@echo $(LIST)
	

setup : pre_setup $(SETUP_LIST)	
	@echo setup
	
pre_setup :
	@echo pre setup

help : help_global $(HELP_LIST)
	

help_global :
	@echo global
	
check_toolchain :
	ifeq($(TOOLCHAIN_ERROR), TRUE)
	$(error toolchain error)
	endif

%.mk : test_own
	@echo !!! CALL MAKE - $(@F)
	make -f $@ $(PARAM)
	@echo $(LIST)


####### include dependency files

-include $(wildcard $(DEP_DIR)*.d)
