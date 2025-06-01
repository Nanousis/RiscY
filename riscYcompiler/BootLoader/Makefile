# Toolchain prefix
CROSS = riscv64-unknown-elf-

# Directories
BUILD_DIR = build
TARGET = $(BUILD_DIR)/first_stage
SRC = first_stage.s

# Tools
AS = $(CROSS)as
LD = $(CROSS)ld
OBJCOPY = $(CROSS)objcopy
OBJDUMP = $(CROSS)objdump

# Files
OBJ = $(TARGET).o
ELF = $(TARGET).elf
BIN = $(TARGET).bin
HEX = $(TARGET).hex
DUMP = $(TARGET).dump

# Default target
all: $(HEX) $(DUMP)

# Ensure build directory exists
$(BUILD_DIR):
	mkdir -p $@

# Assemble RV32I with correct ABI
$(OBJ): $(SRC) | $(BUILD_DIR)
	$(AS) -march=rv32i -mabi=ilp32 -o $@ $<

# Link as RV32 at address 0
$(ELF): $(OBJ)
	$(LD) -m elf32lriscv -Ttext=0x0 -Tdata=0x200 -o $@ $<


# Convert to binary and then to flat hex format
$(HEX): $(ELF)
	$(OBJCOPY) -O binary --gap-fill=0x00 $< $(BIN)
	xxd -p -c 4 $(BIN) | awk '{print toupper(substr($$0,7,2) substr($$0,5,2) substr($$0,3,2) substr($$0,1,2))}' > $@

# Generate disassembly
$(DUMP): $(ELF)
	$(OBJDUMP) -d $< > $@

# Clean
clean:
	rm -rf $(BUILD_DIR)
