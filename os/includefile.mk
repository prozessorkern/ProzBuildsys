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
BUILSYS_TEMP_MOD_NAME := ProzBuildsys - os

# stop the include if we are included in a sub makefile - environment was setup before
ifeq ($(BUILDSYS_CORE_INCLUDE_FINISHED),)
	BUILSYS_OS_OS :=
	-include $(wildcard script/*.mk)

	BUILDSYS_CORE_MAKEFILE_LIST := $(BUILDSYS_CORE_MAKEFILE_LIST) $(dir $(lastword $(MAKEFILE_LIST)))
endif
