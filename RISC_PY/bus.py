import numpy as np
from Peripherals.peripheral import Peripheral

class Bus:
    def __init__(self, peripherals: list[Peripheral] = None):
        self.peripherals = peripherals if peripherals is not None else []

    def AddPeripheral(self, peripheral: Peripheral):
        self.peripherals.append(peripheral)
    
    def read(self, address, size):
        for peripheral in self.peripherals:
            if peripheral.contains(address):
                return peripheral.read(address, size)
        raise ValueError(f"No peripheral found at address {address:#x}")
    
    def write(self, address, value, size):
        for peripheral in self.peripherals:
            if peripheral.contains(address):
                peripheral.write(address, value, size)
                return
        raise ValueError(f"No peripheral found at address {address:#x}")
