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

include includefile.mk

help :
	

setup :
	@echo - setup $(BUILSYS_TEMP_MOD_NAME)
	@echo ### $(BUILSYS_TEMP_MOD_NAME)
	@echo # nothing to setup here
	@echo ##

diag :
	@echo ### $(BUILSYS_TEMP_MOD_NAME)
	@echo BUILSYS_OS_OS $(BUILSYS_OS_OS)
	@echo DEL $(DEL)
	@echo COPY $(COPY)
	@echo DATE $(DATE)
	@echo TIME $(TIME)
	@echo ##