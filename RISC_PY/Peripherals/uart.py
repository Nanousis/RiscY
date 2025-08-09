import numpy as np
from Peripherals.peripheral import Peripheral

class UART(Peripheral):
    def __init__(self, start_address = 0x80000000, end_address = 0x80000000 + 2**23, name="UART"):
        super().__init__(start_address, end_address, name)

    def read(self, address, size):
        return 0x20
        
    def write(self, address, value, size):
        if(size != 1):
            raise ValueError(f"UART only supports writing 1 byte at a time, got {size} bytes")
        print(chr(value), end='')  # Print the character corresponding to the byte value
        return