import pandas as pd
import re
import argparse

# Register mappings
x_to_gdb = {
    f"x{n:02d}": name for n, name in enumerate([
        "zero", "ra", "sp", "gp", "tp", "t0", "t1", "t2",
        "s0", "s1", "a0", "a1", "a2", "a3", "a4", "a5",
        "a6", "a7", "s2", "s3", "s4", "s5", "s6", "s7",
        "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6"
    ])
}
gdb_to_x = {v: k for k, v in x_to_gdb.items() if v != "zero"}
gdb_aliases = {"s0": "fp"}

def extract_dest_register(instruction):
    match = re.match(r"\s*(\w+)\s+(\w+),", instruction)
    if match:
        _, dest = match.groups()
        if dest in gdb_to_x:
            return gdb_to_x[dest]
        elif dest in gdb_aliases:
            alias = gdb_aliases[dest]
            return gdb_to_x.get(alias, None)
    return None

def find_future_verilator_row(verilator_df, gdb_pc, offset=4, fuzz=8):
    target = gdb_pc + offset
    candidates = verilator_df[
        (verilator_df["PC"] >= target - fuzz) &
        (verilator_df["PC"] <= target + fuzz)
    ]
    if candidates.empty:
        return None
    return candidates.iloc[(candidates["PC"] - target).abs().argsort().iloc[0]]

def compare_forward(trace_file, verilator_file, output_file, start_pc=0x00000000, fuzz=8):
    trace_df = pd.read_csv(trace_file)
    verilator_df = pd.read_csv(verilator_file)

    trace_df["PC"] = trace_df["PC"].apply(lambda x: int(str(x), 16) if isinstance(x, str) else int(x))
    verilator_df["PC"] = verilator_df["PC"].astype(int)

    with open(output_file, "w") as out:
        for _, g_row in trace_df.iterrows():
            g_pc = int(g_row["PC"])
            if g_pc < start_pc:
                continue

            instruction = g_row.get("Instruction", "<unknown>")
            dest_reg = extract_dest_register(instruction)
            if not dest_reg or dest_reg == "x00":
                continue

            gdb_name = x_to_gdb[dest_reg]
            g_val = g_row.get(gdb_name)
            if g_val is None and gdb_name in gdb_aliases:
                g_val = g_row.get(gdb_aliases[gdb_name])

            v_row = find_future_verilator_row(verilator_df, g_pc, offset=4, fuzz=fuzz)
            if v_row is None:
                out.write(f"[PC: 0x{g_pc:08x}] Instruction: {instruction} — No future Verilator match found\n")
                continue

            v_val = v_row.get(dest_reg)
            if pd.notnull(g_val) and pd.notnull(v_val) and int(g_val) != int(v_val):
                out.write(f"\n=== GDB PC: 0x{g_pc:08x} / Verilator PC: 0x{v_row['PC']:08x} ===\n")
                out.write(f"Instruction: {instruction}\n")
                out.write(f"{dest_reg} ({gdb_name}): GDB=0x{int(g_val):08x}, Verilator=0x{int(v_val):08x}\n")

    print(f"Done! Differences written to {output_file}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Compare GDB and Verilator register traces")
    parser.add_argument("--trace", default="trace_output.csv", help="Path to GDB trace CSV")
    parser.add_argument("--verilator", default="register_trace.csv", help="Path to Verilator register dump CSV")
    parser.add_argument("--output", default="diff_output.txt", help="Path to write comparison results")
    parser.add_argument("--start-pc", default="0x80002c68", help="Start comparing after this PC (hex or dec)")
    parser.add_argument("--fuzz", type=int, default=8, help="Max PC delta allowed when matching")

    args = parser.parse_args()
    start_pc = int(args.start_pc, 0)

    compare_forward(
        trace_file=args.trace,
        verilator_file=args.verilator,
        output_file=args.output,
        start_pc=start_pc,
        fuzz=args.fuzz
    )
