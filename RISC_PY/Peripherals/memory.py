import numpy as np
from Peripherals.peripheral import Peripheral

class Memory(Peripheral):
    def __init__(self, start_address = 0x80000000, end_address = 0x80000000 + 2**23, name="Memory"):
        super().__init__(start_address, end_address, name)
        self.data = np.full(end_address - start_address, 0xFF, dtype=np.uint8)

    def InitializeHex(self, hex_data):
        if isinstance(hex_data, str):
            # Remove spaces and split into 8-char (32-bit) words
            hex_data = hex_data.replace(' ', '').replace('\n', '')
            words = [hex_data[i:i+8] for i in range(0, len(hex_data), 8)]
        elif isinstance(hex_data, list):
            words = hex_data
        else:
            raise ValueError("hex_data must be a str or list of 32-bit hex strings")
        bytes_list = []
        for word in words:
            byte1 = word& 0xFF
            byte2 = (word >> 8) & 0xFF
            byte3 = (word >> 16) & 0xFF
            byte4 = (word >> 24) & 0xFF
            bytes_list.extend([byte1, byte2, byte3, byte4])
        self.data[:len(bytes_list)] = bytes_list

    def load_u8(self, addr):
        addr -= self.start_address
        return int(self.data[addr])

    def load_u16(self, addr):
        addr -= self.start_address
        return int(self.data[addr]) | (int(self.data[addr+1]) << 8)

    def load_u32(self, addr):
        addr -= self.start_address
        return (
            int(self.data[addr]) |
            (int(self.data[addr+1]) << 8) |
            (int(self.data[addr+2]) << 16) |
            (int(self.data[addr+3]) << 24)
        )


    def store_u8(self, addr, val):
        addr -= self.start_address
        self.data[addr] = val & 0xFF

    def store_u16(self, addr, val):
        addr -= self.start_address
        self.data[addr] = val & 0xFF
        self.data[addr+1] = (val >> 8) & 0xFF

    def store_u32(self, addr, val):
        addr -= self.start_address
        b = (val & 0xFFFFFFFF).to_bytes(4, 'little')
        self.data[addr:addr+4] = np.frombuffer(b, dtype=np.uint8)

    def read(self, address, size):
        if address < self.start_address or address + size > self.end_address:
            raise ValueError(f"Address {address:#x} out of bounds")
        if size == 1:
            return self.load_u8(address)
        elif size == 2:
            return self.load_u16(address)
        elif size == 4:
            return self.load_u32(address)
        else:
            raise ValueError(f"Unsupported size: {size}")
        
    def write(self, address, value, size):
        if address < self.start_address or address + size > self.end_address:
            raise ValueError(f"Address {address:#x} out of bounds")
        if size == 1:
            self.store_u8(address, value)
        elif size == 2:
            self.store_u16(address, value)
        elif size == 4:
            self.store_u32(address, value)
        else:
            raise ValueError(f"Unsupported size: {size}")
        return