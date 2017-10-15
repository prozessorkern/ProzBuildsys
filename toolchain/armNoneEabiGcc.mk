
OWN_TOOLCHAIN := AVR8

TOOLCHAIN_LIST := $(TOOLCHAIN_LIST) $(OWN_TOOLCHAIN)

ifeq	($(TOOLCHAIN), $(OWN_TOOLCHAIN))

ifeq	($(TOOLCHAIN_SET), TRUE)
	TOOLCHAIN_ERROR := TRUE
else
	TOOLCHAIN_SET := TRUE
endif

### Compiler and Assembler

test:
	@echo test successful ARM_NONE_EABI_GCC

setup_toolchain :
	@echo setup_toolchain $(TOOLCHAIN_SET) $(TOOLCHAIN_ERROR)

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