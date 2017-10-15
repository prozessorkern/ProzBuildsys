


OWN_TOOLCHAIN := 

TOOLCHAIN_LIST := $(TOOLCHAIN_LIST) $(OWN_TOOLCHAIN)
SETUP_LIST := $(SETUP_LIST) setup_toolchain
HELP_LIST := $(HELP_LIST) help_toolchain

-include $(wildcard toolchain/*)

ifeq	($(TOOLCHAIN_SET), $(OWN_TOOLCHAIN))

ifeq	($(TOOLCHAIN_SET), TRUE)
	TOOLCHAIN_ERROR := TRUE
else
	TOOLCHAIN_SET := TRUE
endif

### Compiler and Assembler


test:
	@echo test successful AVR8
	
setup_toolchain :
	@echo setup_toolchain $(TOOLCHAIN_SET) $(TOOLCHAIN_ERROR)
	
help_toolchain :
	@echo blubb

$(OBJS_DIR)%.o : %.c
	@echo !!! CALL COMPILER - $< - $(@F)
	$(CC) $(C_OPT) -o $(OBJS_DIR)$(@F) $<

$(OBJS_DIR)%.o : %.s
	@echo !!! CALL ASSEMBLER - $< - $(@F)
	$(ASM) $(ASM_OPT) -o $(OBJS_DIR)$(@F) $<

$(OBJS_DIR)%.o : %.asm
	@echo !!! CALL ASSEMBLER - $< - $(@F)
	$(ASM) $(ASM_OPT) -o $(OBJS_DIR)$(@F) $<
	
### Linker
$(TARGET) : $(OBJECTS)
	@echo !!! CALL LINKER  - $< - $(@F)
	$(LINK) 

endif