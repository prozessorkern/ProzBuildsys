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
		
		DEL				:=
		COPY			:=
		DATE			:=
		TIME			:=
		
		BUILDSYS_ERROR	+= !!!$(BUILSYS_TEMP_MOD_NAME) - Linux not yet implemented - sorry :( !!!;
		
	else
		BUILDSYS_ERROR	+= !!!$(BUILSYS_TEMP_MOD_NAME) - Multiple operating systems detected!!!;
	endif
endif
