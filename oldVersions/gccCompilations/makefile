# Paths (Modify if necessary)
# TOOLCHAIN_PATH = ~/Documents/rv32/xpacks/.bin
# export PATH := $(TOOLCHAIN_PATH):$PATH
# If you get a permission denied error, try the following instead
# export PATH=~/Documents/rv32/xpacks/.bin:$PATH

# Tools
CC = riscv-none-elf-gcc
OBJCOPY = riscv-none-elf-objcopy
SIZE = riscv-none-elf-size
DD = dd
HEXDUMP = hexdump

# Flags
ARCH = rv32i
ABI = ilp32
CFLAGS = -march=$(ARCH) -mabi=$(ABI)
LDFLAGS = -T linker.ld

# Object files
OBJS = startup.o main.o

# Targets
all: main.hex text.bin data.bin data.hex rodata.bin bss.hex bss.bin main.s 

startup.o: startup.s
	$(CC) -c $(CFLAGS) startup.s -o startup.o

main.o: main.c
	$(CC) -c $(CFLAGS) main.c -o main.o -O1

main.elf: $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) $(LDFLAGS) -o main.elf -nostartfiles -nostdlib

main.bin: main.elf
	$(OBJCOPY) -O binary main.elf main.bin

main.hex: main.bin
	$(HEXDUMP) -v -e '1/4 "%08x\n"' main.bin > main.hex

text.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.text main.elf text.bin

data.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.data main.elf data.bin

data.hex: data.bin
	$(HEXDUMP) -v -e '1/4 "%08x\n"' data.bin > data.hex

rodata.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.rodata main.elf rodata.bin

bss.bin: main.elf
	$(SIZE) -A main.elf | awk '/\.bss/ {print $$2}' | xargs -I {} $(DD) if=/dev/zero of=bss.bin bs=1 count={}
bss.hex: bss.bin
	$(HEXDUMP) -v -e '1/4 "%08x\n"' bss.bin > bss.hex

main.s: main.c
	$(CC) -S $(CFLAGS) main.c -o main.s

disassemble: main.elf
	riscv-none-elf-objdump -D main.elf > main.dis

clean:
	rm -f main.o startup.o main.elf main.bin main.hex text.bin data.bin data.hex rodata.bin bss.bin bss.hex main.s
