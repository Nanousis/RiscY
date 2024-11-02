import sys
import os
import struct

def main():
    # Get the list of program file names from command line arguments
    program_files = sys.argv[1:]

    if not program_files:
        print("Usage: python merge_programs.py program1 program2 ...")
        sys.exit(1)

    num_programs = len(program_files)
    per_header_size = 12 + 4  # Name (12 bytes) + starting address (4 bytes)

    # Prepare the initial data (provided lines)
    initial_lines = [
        "//Copyright (C)2014-2024 Gowin Semiconductor Corporation.",
        "//All rights reserved.",
        "//File Title: Bitstream file",
        "//Tool Version: V1.9.10.02",
        "//Device: GW5A-25",
        "//Device Version: A",
        "//Part Number: GW5A-LV25MG121NES",
        "//Device-package: GW5A-25A-MBGA121N",
        "//BackgroundProgramming: OFF",
        "//CheckSum: 0x2A4A",
        "//UserCode: 0x00002A4A",
        "//LoadingRate: 35.000MHz",
        "//CRCCheck: ON",
        "//Compress: OFF",
        "//Encryption: OFF",
        "//SecurityBit: ON",
        "//SecureMode: OFF",
        "//JTAGAsRegularIO: OFF",
        "//SEUHandler: OFF",
        "//MultiBootAddrWidth: 24",
        "//MultiBootSPIAddr: 0x00000000",
        "//MspiJumpAddrWidth: 24",
        "//MspiJumpSPIAddr: 0x000000",
        "//Created Time: Fri Nov  1 15:45:41 2024",
        "111111111111111111111111111111111111111111111111111111111111111111111111111111111",
        "111111111111111111111111111111111101111011011110110111101101111011111111111111111111111111111111",
        "1111111111111111",
        "1010010111000011",
        "0000011000000000000000000000000000000000000000010010100000011011",
        "0001000000000000000000000000000000000000101011100000000000000000",
        "0110001000000000000000000000000000000000000000000000000001000000",
        "0101000100000000111111111111111111111111111111111111111111111111",
        "00001011000000000000000000000000",
        "1101001000000000111111111111111100000000000000000000000000000000",
        "00010010000000000000000000000000",
        "00111011100000000010101101000000",
        "0101001001001001010100110100001101011001",  # Binary representation of 'RISCY'
    ]

    # Calculate sizes
    initial_lines_size = sum(len(line.encode('utf-8')) + 1 for line in initial_lines)  # +1 for newline

    # Compute header size including the initial data
    header_size = initial_lines_size + 4 + num_programs * per_header_size  # Number of programs (4 bytes) + per-program headers

    # Get sizes of all program files
    file_sizes = []
    for filename in program_files:
        try:
            size = os.path.getsize(filename)
            file_sizes.append(size)
        except OSError as e:
            print(f"Error accessing file {filename}: {e}")
            sys.exit(1)

    # Compute starting addresses for each program
    starting_addresses = []
    current_address = header_size
    for size in file_sizes:
        starting_addresses.append(current_address)
        current_address += size

    # Open the output file in binary write mode
    with open('merged_programs.fs', 'wb') as outfile:
        # Write the initial lines as they are
        for line in initial_lines:
            outfile.write(line.encode('utf-8') + b'\n')  # Encode the line and add a newline

        # Write the number of programs (4 bytes, little-endian)
        outfile.write(struct.pack('<I', num_programs))

        # Write headers for each program
        for i, filename in enumerate(program_files):
            # Extract the base name of the file
            name = os.path.basename(filename)
            name_bytes = name.encode('utf-8')

            # Truncate or pad the name to 12 bytes
            name_bytes = name_bytes[:12]
            name_bytes = name_bytes.ljust(12, b'\x00')  # Pad with null bytes if necessary
            outfile.write(name_bytes)

            # Write the starting address (4 bytes, little-endian)
            outfile.write(struct.pack('<I', starting_addresses[i]))

        # Write the content of all program files
        for filename in program_files:
            with open(filename, 'rb') as infile:
                while True:
                    data = infile.read(4096)  # Read in chunks of 4096 bytes
                    if not data:
                        break
                    outfile.write(data)

if __name__ == '__main__':
    main()
