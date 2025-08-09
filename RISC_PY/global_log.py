
from enum import Enum
import json

class EventType(Enum):
    MEMORY_READ = 1
    MEMORY_WRITE = 2
    REGISTER_WRITE = 3
    FLOW_CHANGE = 4 
    NOP = 5
class Status:
    def __init__(self, decode = 0, rename = 0, issue =0, dispatch = 0, resolve = 0, commit = 0):
        self.decode = decode
        self.rename = rename
        self.issue = issue
        self.dispatch = dispatch
        self.resolve = resolve
        self.commit = commit
    
log_file = None
enable_logging = True

def open_log_file(path: str):
    global log_file
    if log_file is not None and enable_logging:
        log_file.close()
    log_file = open(path, "w")
    print(f"Opened log file: {path}")
def write_log_file(string:str):
    if(enable_logging):
        log_file.write(string)
def close_log_file():
    global log_file
    if log_file is not None:
        log_file.close()
        print(f"Closed log file")
    log_file = None
class DebugEvent:
    def __init__(self, pc:int, instr:int, event_t:EventType = EventType.NOP, new_pc:int = 0, reg_changed:int = 0, reg_val:int = 0, mem_addr:int = 0, mem_val:int = 0, status:Status = None):
        self.pc = pc
        self.instr = instr
        self.event_t = event_t if event_t is not None else EventType.NOP
        self.new_pc = new_pc
        self.status = status if status is not None else Status()
        self.reg_changed = reg_changed
        self.reg_val = reg_val
        self.mem_addr = mem_addr
        self.mem_val = mem_val

    def to_dict(self):
        d = {
            "pc"          : self.pc,
            "instr" : (self.instr & 0xFFFFFFFF),
            "event_t"  : self.event_t.name,
        }

        # Flow‐changing instructions
        if self.event_t is EventType.FLOW_CHANGE:
            d["new_pc"] = self.new_pc

        # Register writes
        elif self.event_t is EventType.REGISTER_WRITE:
            d["reg_changed"] = self.reg_changed
            d["reg_val"]   = self.reg_val

        # Memory accesses
        elif self.event_t in (EventType.MEMORY_READ, EventType.MEMORY_WRITE):
            d["mem_addr"] = self.mem_addr
            d["mem_val"]   = self.mem_val

        if hasattr(self, "status"):
            st = self.status
            # only include if any stage non‐zero
            if any((st.decode, st.rename, st.issue, st.dispatch, st.resolve, st.commit)):
                d["status"] = {
                    "decode"   : st.decode,
                    "rename"   : st.rename,
                    "issue"    : st.issue,
                    "dispatch" : st.dispatch,
                    "resolve"  : st.resolve,
                    "commit"   : st.commit
                }

        return d

    def to_json(self, **kwargs):
        return json.dumps(self.to_dict(), **kwargs)
    
    def __str__(self):
        return f"PC: {self.pc:#x}, disass: {self.disass}, Event: {self.event_t.name}, New PC: {self.new_pc:#x}, Register Changed: {self.reg_changed}, Register Value: {self.reg_val:#x}, Memory Address: {self.mem_addr:#x}, Memory Value: {self.mem_val:#x}"