from asyncio import events
import json
import logging
from pathlib import Path
from capstone import CS_ARCH_RISCV, CS_MODE_RISCV32, Cs

log = logging.getLogger("visualize")

HTML_PRELUDE = r"""<!DOCTYPE html>
<html>
<head>
    <script src="https://unpkg.com/konva@9/konva.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
    <style>
    html, body {
          margin: 0;
          padding: 0;
          width: 100%;
          height: 100%;
          overflow: hidden;
        }
    </style>
</head>
<body>
    <div id="konva-container"></div>
"""

HTML_EPILOGUE = r"""
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>"""

md = Cs(CS_ARCH_RISCV, CS_MODE_RISCV32)

def decode(inst_word, PC):
    for insn in md.disasm(inst_word.to_bytes(4, 'little'), PC):
        return insn.mnemonic, insn.op_str

def make_visualization(path_pipeline: Path, path_output: Path):

    module_dir = Path(__file__).parent    # the visualize/ folder
    path_js     = module_dir / "visualize.js"
    
    assert path_js.exists(), "visualize.js not found"

    if not path_pipeline.exists():
        raise RuntimeError(f'Cannot find pipeline file "{path_pipeline}"')

    # --- load your JSON array of events ---
    with open(path_pipeline, "r") as f:
        events = json.load(f)
    if not isinstance(events, list):
        raise RuntimeError("pipeline JSON must be a list of event objects")

    for ev in events:
        instr = ev.get("instr")
        pc = ev.get("pc", 0)
        if isinstance(instr, int):
            mnemonic, op_str = decode(instr, pc)
            ev["disass"] = f"{mnemonic} {op_str}"


    # --- keep only the ones that actually committed ---
    committed = [
        ev for ev in events
        if ev.get("status", {}).get("commit") is not None
    ]

    # --- find the last cycle from status.commit ---
    latest_cycle = max(int(ev["status"]["commit"]) for ev in committed)
    instructions_committed = len(committed)
    log.info(f"Instructions Committed = {instructions_committed}, Cycles = {latest_cycle}")
    log.info(f"IPC = {instructions_committed / latest_cycle:.3f}")

    # --- emit the HTML + JS + data ---
    with open(path_output, "w") as out:
        out.write(HTML_PRELUDE)

        # embed visualize.js
        out.write("<script>\n")
        out.write(path_js.read_text())
        out.write("\n</script>\n")

        # embed your pipeline data
        out.write("<script>\nlet pipeline = ")
        json.dump(committed, out)
        out.write(";\n</script>\n")

        out.write(HTML_EPILOGUE)

    log.info(f"Pipeline saved in {path_output}")


# Usage example:
# make_visualization(Path("log.json"), Path("pipeline.html"))

def main():
    import argparse
    parser = argparse.ArgumentParser(description="Generate a visualization from a pipeline log file.")
    parser.add_argument("pipeline_log", type=Path, help="Path to the pipeline log file (JSON format)")
    parser.add_argument("output_html", type=Path, help="Path to the output HTML file")
    args = parser.parse_args()

    make_visualization(args.pipeline_log, args.output_html)
    print(f"Visualization saved to {args.output_html}")
if __name__ == "__main__":
    main()