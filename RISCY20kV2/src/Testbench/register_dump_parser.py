import pandas as pd
import re

def parse_register_dump(file_path):
    with open(file_path, "r") as f:
        content = f.read()

    blocks = content.strip().split("--- Register Dump @ PC = ")
    parsed_rows = []

    for block in blocks[1:]:  # First element is empty
        lines = block.strip().splitlines()

        # First line contains PC
        pc_str = lines[0].split()[0]
        pc = int(pc_str, 16)

        reg_values = {'PC': pc}
        for line in lines[1:]:
            match = re.match(r"x(\d+):\s+0x([0-9a-fA-F]{8})", line)
            if match:
                reg_index = int(match.group(1))
                reg_val = int(match.group(2), 16)
                reg_values[f"x{reg_index:02d}"] = reg_val

        parsed_rows.append(reg_values)

    df = pd.DataFrame(parsed_rows)
    return df

# Example usage:
if __name__ == "__main__":
    df = parse_register_dump("register_dump.txt")
    pd.set_option("display.max_columns", None)
    print(df.head())
    df.to_csv("register_trace.csv", index=False)
