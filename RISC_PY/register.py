class RegisterFile:
    def __init__(self,num_regs=32, names=["x"+str(i) for i in range(32)]):
        # x0–x31
        self.regs = [0] * num_regs
        self.names = names

    def read(self, idx):
        if idx == 0:
            return 0       # x0 is hardwired to zero
        return self.regs[idx]

    def write(self, idx: int, value: int):
        if idx != 0:
            self.regs[idx] = value & 0xFFFFFFFF  # mask to XLEN

    def dump(self, base=16):
        for i, v in enumerate(self.regs):
            if base == 16:
                print(f"{self.names[i]} = 0x{v:08x}\n", end=' ')
            elif base == 10:
                print(f"{self.names[i]} = {v}\n", end=' ')
            else:
                print(f"{self.names[i]} = {v}\n", end=' ')