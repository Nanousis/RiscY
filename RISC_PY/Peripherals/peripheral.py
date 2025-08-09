from abc import ABC, abstractmethod

class Peripheral(ABC):
    def __init__(self, start_address, end_address, name="Peripheral"):
        self.start_address = start_address
        self.end_address = end_address
        self.name = name

    def contains(self, address):
        return self.start_address <= address <= self.end_address

    @abstractmethod
    def read(self, address, size):
        pass

    @abstractmethod
    def write(self, address, value, size):
        pass
