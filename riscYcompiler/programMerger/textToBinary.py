def binary_file_to_bits(file_path, output_path):
    try:
        with open(file_path, 'rb') as binary_file:
            binary_data = binary_file.read()
        
        # Convert each byte to its binary representation
        bits = ''.join(format(byte, '08b') for byte in binary_data)
        
        with open(output_path, 'w') as output_file:
            output_file.write(bits)
            
            # Append the copyright and metadata information
            output_file.write("""
//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Bitstream file
//Tool Version: V1.9.10.02
//Device: GW5A-25
//Device Version: A
//Part Number: GW5A-LV25MG121NES
//Device-package: GW5A-25A-MBGA121N
//BackgroundProgramming: OFF
//CheckSum: 0x2A4A
//UserCode: 0x00002A4A
//LoadingRate: 35.000MHz
//CRCCheck: ON
//Compress: OFF
//Encryption: OFF
//SecurityBit: ON
//SecureMode: OFF
//JTAGAsRegularIO: OFF
//SEUHandler: OFF
//MultiBootAddrWidth: 24
//MultiBootSPIAddr: 0x00000000
//MspiJumpAddrWidth: 24
//MspiJumpSPIAddr: 0x000000
//Created Time: Fri Nov  1 15:45:41 2024
111111111111111111111111111111111111111111111111111111111111111111111111111111111
111111111111111111111111111111111101111011011110110111101101111011111111111111111111111111111111
1111111111111111
1010010111000011
0000011000000000000000000000000000000000000000010010100000011011
0001000000000000000000000000000000000000101011100000000000000000
0110001000000000000000000000000000000000000000000000000001000000
0101000100000000111111111111111111111111111111111111111111111111
00001011000000000000000000000000
1101001000000000111111111111111100000000000000000000000000000000
00010010000000000000000000000000
00111011100000000010101101000000""")
        
        print(f"Binary data converted to bits and saved to {output_path}")
    except FileNotFoundError:
        print("The specified file was not found.")
    except Exception as e:
        print(f"An error occurred: {e}")

# Usage example
# Replace 'input.bin' with the path to your binary file and 'output.txt' with your desired output file name
binary_file_to_bits('merged_programs.bin', 'output.fs')
