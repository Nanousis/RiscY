# Compiler and tools
CC       = riscv64-elf-g++
OBJCOPY  = riscv64-elf-objcopy
OBJDUMP  = riscv64-elf-objdump

# Compiler flags
CFLAGS   = -march=rv32i -mabi=ilp32 -Ofast -g \
-nostartfiles \
-fno-exceptions -fno-rtti -fno-threadsafe-statics \
-fno-use-cxa-atexit \
-fno-unwind-tables -fno-asynchronous-unwind-tables -mcmodel=medany\

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
MEMORY_SIZE = 62912

# Default target
all: $(VERSION_FILE) $(BUILD_DIR)/program.hex $(BUILD_DIR)/program.bin disassemble copy_main_c update_version

# Ensure the build directory exists
$(BUILD_DIR):
	@mkdir -p $(BUILD_DIR)

# Generate unpadded binary
$(BUILD_DIR)/program_unpadded.bin: $(BUILD_DIR)/program.elf | $(BUILD_DIR)
	$(OBJCOPY) -O binary $< $@

# Pad the binary to the desired memory size
$(BUILD_DIR)/program.bin: $(BUILD_DIR)/program_unpadded.bin | $(BUILD_DIR)
	dd if=/dev/zero bs=1 count=$(MEMORY_SIZE) of=$(BUILD_DIR)/padding.bin
	cat $< $(BUILD_DIR)/padding.bin | dd bs=$(MEMORY_SIZE) count=1 > $@
	rm $(BUILD_DIR)/padding.bin

# Generate hex file from padded binary
$(BUILD_DIR)/program.hex: $(BUILD_DIR)/program.bin | $(BUILD_DIR)
	hexdump -v -e '/4 "%08x\n"' $< > $@

# Link object files to create ELF
$(BUILD_DIR)/program.elf: $(BUILD_DIR)/startup.o $(BUILD_DIR)/main.o \
                          $(BUILD_DIR)/riscYstdio.o $(BUILD_DIR)/tinyprintf.o | $(BUILD_DIR)
	$(CC) $(CFLAGS) $(LDFLAGS) -o $@ $^

# Compile startup assembly
$(BUILD_DIR)/startup.o: startup.s | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@
# compile tinyprintf
$(BUILD_DIR)/tinyprintf.o: tinyprintf.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@
# Compile main C file
$(BUILD_DIR)/main.o: main.cpp | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Compile riscYstdio C file
$(BUILD_DIR)/riscYstdio.o: riscYstdio.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Copy main.cpp into the build directory
.PHONY: copy_main_c
copy_main_c: | $(BUILD_DIR)
	cp main.cpp $(BUILD_DIR)/

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
	$(OBJDUMP) -dS $< > $(BUILD_DIR)/program.S
	@echo "Disassembly generated at $(BUILD_DIR)/program.S"

# Clean build files
.PHONY: clean
clean:
	rm -rf $(BUILD_BASE_DIR) $(VERSION_FILE)
