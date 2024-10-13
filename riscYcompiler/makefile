# Compiler and tools
CC       = riscv32-unknown-elf-gcc
OBJCOPY  = riscv32-unknown-elf-objcopy
OBJDUMP  = riscv32-unknown-elf-objdump

# Compiler flags
CFLAGS   = -march=rv32i -mabi=ilp32 -O0 -Wall -nostdlib -nostartfiles -ffreestanding

# Linker flags
LDFLAGS  = -T linker.ld -Wl,-Map=$(BUILD_DIR)/program.map

# Build base directory
BUILD_BASE_DIR = builds

# Versioning
VERSION_FILE = version.txt
VERSION := $(shell cat $(VERSION_FILE) 2>/dev/null || echo 0)
NEXT_VERSION := $(shell echo $$(($(VERSION)+1)))

# Build directory for this version
BUILD_DIR = $(BUILD_BASE_DIR)/build$(VERSION)

# Desired memory size in bytes
MEMORY_SIZE = 4096

# Default target
all: $(VERSION_FILE) $(BUILD_DIR)/program.hex disassemble update_version

# Ensure the build directory exists
$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

# Generate hex file in desired format
$(BUILD_DIR)/program.hex: $(BUILD_DIR)/program.elf | $(BUILD_DIR)
	$(OBJCOPY) -O binary $< $(BUILD_DIR)/program.bin
	# Pad the binary to the desired memory size
	dd if=/dev/zero bs=1 count=$(MEMORY_SIZE) of=$(BUILD_DIR)/padding.bin
	cat $(BUILD_DIR)/program.bin $(BUILD_DIR)/padding.bin | dd bs=$(MEMORY_SIZE) count=1 > $(BUILD_DIR)/padded_program.bin
	# Convert binary to hex words
	hexdump -v -e '/4 "%08x\n"' $(BUILD_DIR)/padded_program.bin > $@
	# Clean up intermediate files
	rm $(BUILD_DIR)/padding.bin $(BUILD_DIR)/program.bin $(BUILD_DIR)/padded_program.bin

# Link object files to create ELF
$(BUILD_DIR)/program.elf: $(BUILD_DIR)/startup.o $(BUILD_DIR)/main.o $(BUILD_DIR)/riscYstdio.o | $(BUILD_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

# Compile startup assembly
$(BUILD_DIR)/startup.o: startup.s | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile main C file
$(BUILD_DIR)/main.o: main.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile riscYstdio C file
$(BUILD_DIR)/riscYstdio.o: riscYstdio.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Update version number
.PHONY: update_version
update_version:
	@echo $(NEXT_VERSION) > $(VERSION_FILE)
	@echo "Build version updated to $(NEXT_VERSION)"

# Ensure version file exists
$(VERSION_FILE):
	@echo 0 > $(VERSION_FILE)

# Disassemble the ELF file
.PHONY: disassemble
disassemble: $(BUILD_DIR)/program.elf | $(BUILD_DIR)
	$(OBJDUMP) -d $< > $(BUILD_DIR)/program.S
	@echo "Disassembly generated at $(BUILD_DIR)/program.S"

# Clean build files
.PHONY: clean
clean:
	rm -rf $(BUILD_BASE_DIR) $(VERSION_FILE)
