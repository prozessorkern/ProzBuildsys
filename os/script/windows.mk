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

ifeq ($(OS),Windows_NT)
	ifeq ($(BUILSYS_OS_OS), )
		BUILSYS_OS_OS	:= Windows_NT
		
		DEL				:= del
		COPY			:= copy
		DATE			:= $(shell echo %DATE:~6,4%.%DATE:~3,2%.%DATE:~0,2%)
		TIME			:= $(shell echo %TIME:~0,2%:%TIME:~3,2%)
	else
		BUILDSYS_ERROR += !!!$(BUILSYS_TEMP_MOD_NAME) - Multiple operating systems detected!!!;
	endif
endif