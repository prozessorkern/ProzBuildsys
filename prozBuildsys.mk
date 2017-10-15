#############################################################################
#
# 	prozBuildsys - core makefile
#
#
# 	Date :		2017-10-15
#
#	Author :	Stefan Strobel
#
#	make help :	print help of all 
#
#############################################################################

include toolchain/toolchain.mk

####### Compiler, tools and options

CC					= armcc
ASM					= armasm
LINKER			= armlink
BIN					= fromelf
LIB					= armar

RM          = rm
DEL         = del
CP          = copy

COPY        = copy

DATE				= $(shell echo %DATE:~6,4%%DATE:~3,2%%DATE:~0,2%)
TIME				= $(shell echo %TIME:~0,2%%TIME:~3,2%)


####### Major targets

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


####### include dependency files

-include $(wildcard $(DEP_DIR)*.d)
