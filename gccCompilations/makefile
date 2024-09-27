
# Paths (Modify if necessary)
# TOOLCHAIN_PATH = ~/Documents/rv32/xpacks/.bin
# export PATH := $(TOOLCHAIN_PATH):$PATH
# if you get permission denied error, try the following instead
# export PATH=~/Documents/rv32/xpacks/.bin:$PATH

# Targets
# Tools
CC = riscv-none-elf-gcc
LD = riscv-none-elf-ld
OBJCOPY = riscv-none-elf-objcopy
SIZE = riscv-none-elf-size
DD = dd
HEXDUMP = hexdump

# Flags
ARCH = rv32i
ABI = ilp32
CFLAGS = -march=$(ARCH) -mabi=$(ABI)
LDFLAGS = -Ttext=0x0

# Targets
all: main.hex text.bin data.bin rodata.bin bss.bin main.s

main.o: main.c
	$(CC) -c $(CFLAGS) main.c -o main.o -O1

main.elf: main.o
	$(LD) $(LDFLAGS) main.o -o main.elf

main.bin: main.elf
	$(OBJCOPY) -O binary main.elf main.bin

main.hex: main.bin
	$(HEXDUMP) -v -e '1/4 "%08x\n"' main.bin > main.hex

text.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.text main.elf text.bin

data.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.data main.elf data.bin

rodata.bin: main.elf
	$(OBJCOPY) -O binary --only-section=.rodata main.elf rodata.bin

bss.bin: main.elf
	$(SIZE) -A main.elf | awk '/\.bss/ {print $$2}' | xargs -I {} $(DD) if=/dev/zero of=bss.bin bs=1 count={}

main.s: main.c
	$(CC) -S $(CFLAGS) main.c -o main.s

clean:
	rm -f main.o main.elf main.bin main.hex text.bin data.bin rodata.bin bss.bin main.s
