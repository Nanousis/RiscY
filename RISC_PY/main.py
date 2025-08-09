import os
import sys
from anyio import Path
from capstone import *
import argparse
from tqdm import tqdm

from Peripherals.uart import UART
from bus import Bus
from cpu import CPU
from Peripherals.memory import Memory
from register import RegisterFile
import global_log
import trace_viewer.visualize as viz

rv32i_registers=[
    "zero", "ra", "sp", "gp", "tp",
    "t0", "t1", "t2",
    "s0", "s1",
    "a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7",
    "s2", "s3", "s4", "s5", "s6", "s7", "s8", "s9", "s10", "s11",
    "t3", "t4", "t5", "t6"
]

def read_hex_file(filename):
    instructions = []
    with open(filename, 'r') as f:
        for line in f:
            line = line.strip()
            if line:
                instr = int(line, 16)
                instructions.append(instr)
    return instructions

def main():
    # load a flat binary file
    parser = argparse.ArgumentParser(description="Run a RISC-V binary file.")
    parser.add_argument("--boot_hex", help="Path to the .hex file to load on boot 0x0")
    parser.add_argument("--ram_hex", help="Path to the .hex file to load on ram 0x80000000")
    parser.add_argument("--pc", default="0", help="Initial program counter value")
    parser.add_argument("--limit", default="1000", help="Maximum number of instructions to execute")
    parser.add_argument("--log", default="output/log.json", help="Path to the log file")
    parser.add_argument("--disable_log", action="store_true", help="Disable logging")
    args = parser.parse_args()

    folder = os.path.dirname(args.log)
    if not os.path.exists(folder):
        os.makedirs(folder)

    global_log.open_log_file(args.log)
    global_log.enable_logging = not args.disable_log
    global_log.write_log_file("[\n")  # Start of JSON array
    bus = Bus()

    # Memories 
    if args.boot_hex:
        boot_hex_data = read_hex_file(args.boot_hex)
        boot = Memory(start_address=0x0, end_address=0x00001000, name="Boot Memory")
        boot.InitializeHex(boot_hex_data)
        bus.AddPeripheral(boot)
    if args.ram_hex:
        ram_hex_data = read_hex_file(args.ram_hex)
        ram = Memory(start_address=0x80000000, end_address=0x80000000 + 2**23, name="RAM")
        ram.InitializeHex(ram_hex_data)
        bus.AddPeripheral(ram)
    extraScreen = Memory(start_address=0x88000000-200, end_address=0x89000000 + 2**23, name="Extra Screen")
    bus.AddPeripheral(extraScreen)
    uart = UART(start_address=0x10000000, end_address=0x1000000F, name="UART")
    bus.AddPeripheral(uart)

    register_file = RegisterFile(names=rv32i_registers)

    pc = int(args.pc, 16)
    cpu = CPU(bus=bus, register_file=register_file)
    returned = cpu.run(max_steps=int(args.limit), start_pc=pc)
    global_log.write_log_file("\n]\n")  # End of JSON array
    global_log.close_log_file()
    if(global_log.enable_logging):
        viz.make_visualization(
            Path(args.log),
            Path(args.log).with_suffix('.html')
        )
    if returned:
        print(f"\033[1;31mCPU run stopped with error: {returned}\033[0m")
        sys.exit(1)
    else:
        print("\033[1;32mCPU run completed successfully.\033[0m")

if __name__ == "__main__":
    main()
