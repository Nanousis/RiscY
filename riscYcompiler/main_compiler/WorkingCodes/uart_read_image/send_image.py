#!/usr/bin/env python3
"""
Send a binary file over UART as:
  MAGIC(4) + SIZE(u32 little-endian) + PAYLOAD(bytes)

Receiver side reads until it sees MAGIC, then reads SIZE, then reads exactly SIZE bytes.

Usage:
  python send_file_uart.py --port /dev/ttyUSB0 --baud 115200 --file firmware.bin
Optional:
  --wait-ok        Wait for "OK" (2 bytes) from receiver after sending
  --chunk 1024     Send payload in chunks (helps responsiveness)
  --inter-chunk-ms 0  Add a small delay between chunks (if receiver is slow)
"""

import argparse
import os
import struct
import sys
import time

import serial


MAGIC = b"BIN1"


def parse_args() -> argparse.Namespace:
    p = argparse.ArgumentParser()
    p.add_argument("--port", default="/dev/ttyUSB2", help="e.g. /dev/ttyUSB0, /dev/ttyACM0, COM3")
    p.add_argument("--baud", type=int, default=115200)
    p.add_argument("--file", required=True, help="Path to binary file")
    p.add_argument("--timeout", type=float, default=2.0, help="Serial read timeout (seconds)")
    p.add_argument("--wait-ok", action="store_true", help='Wait for 2-byte "OK" ack after sending')
    p.add_argument("--chunk", type=int, default=1, help="Payload chunk size for writes")
    p.add_argument("--inter-chunk-ms", type=int, default=0, help="Sleep between chunks (ms)")
    p.add_argument("--reset-delay", type=float, default=0.0,
                   help="Delay after opening port (seconds). Useful if target resets on open.")
    return p.parse_args()


def send_file(port: str, baud: int, path: str, timeout: float,
              wait_ok: bool, chunk: int, inter_chunk_ms: int, reset_delay: float) -> None:
    if not os.path.isfile(path):
        raise FileNotFoundError(path)

    with open(path, "rb") as f:
        data = f.read()

    size = len(data)
    header = MAGIC + struct.pack("<I", size)

    print(f"[+] Port: {port} @ {baud}")
    print(f"[+] File: {path} ({size} bytes)")
    print(f"[+] Header: MAGIC={MAGIC!r}, SIZE(le32)={size}")

    with serial.Serial(port=port, baudrate=baud, timeout=timeout) as ser:
        if reset_delay > 0:
            time.sleep(reset_delay)

        # Write header
        ser.write(header)
        ser.flush()

        # Write payload in chunks
        sent = 0
        t0 = time.time()
        for i in range(0, size, chunk):
            block = data[i:i + chunk]
            ser.write(block)
            sent += len(block)

            # Optional pacing if receiver is slow
            if inter_chunk_ms > 0:
                time.sleep(inter_chunk_ms / 1000.0)

            # Progress
            if size >= 1024:
                pct = (sent * 100.0) / size
                sys.stdout.write(f"\r[>] Sent {sent}/{size} bytes ({pct:5.1f}%)")
                sys.stdout.flush()

        ser.flush()
        dt = time.time() - t0
        if size >= 1024:
            sys.stdout.write("\n")

        rate = (size / dt) if dt > 0 else 0.0
        print(f"[+] Done sending in {dt:.3f}s ({rate:.0f} B/s)")

def main() -> int:
    args = parse_args()
    try:
        send_file(
            port=args.port,
            baud=args.baud,
            path=args.file,
            timeout=args.timeout,
            wait_ok=args.wait_ok,
            chunk=args.chunk,
            inter_chunk_ms=args.inter_chunk_ms,
            reset_delay=args.reset_delay,
        )
        return 0
    except KeyboardInterrupt:
        print("\n[-] Interrupted.")
        return 130
    except Exception as e:
        print(f"[-] Error: {e}")
        return 1


if __name__ == "__main__":
    raise SystemExit(main())
