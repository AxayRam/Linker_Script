

# Variables for utilities
GCC       = arm-none-eabi-gcc
LD        = arm-none-eabi-ld
READELF   = arm-none-eabi-readelf




TARGET = main

# variable for linker scrtip, map file and the readelf output
LD_SCRIPT   = $(TARGET).ld
LD_MAP      = $(TARGET).map
READELF_OUT = $(TARGET).txt

# object files our exploration depends on
OBJ = main.o global.o

# this is executed on running `make`
all: $(READELF_OUT)
	@

# generates the log
$(READELF_OUT): $(TARGET).elf
	$(READELF) -a $^ > $@

# output file
# Linker rule: make .elf file from object files
main.elf: $(OBJ) $(LD_SCRIPT)
	$(LD) -T $(LD_SCRIPT) -Map=$(LD_MAP) -o $@ $(OBJ)

# Compile rule: make .o files from .c
%.o: %.c
	$(GCC) -Wall -nostdlib -fno-builtin -ffreestanding -c $< -o $@


clean:
	rm -f *.o *.elf *.txt *.map *.log

# ils: #internal linker script
# 	@echo "internal linker file generates"
# 	arm-none-eabi-ld -verbose

# 	#compgen -c | grep '^arm-none-eabi-'
