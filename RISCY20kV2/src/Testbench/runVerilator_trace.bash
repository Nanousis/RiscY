#!/bin/bash

# Remove test.o if it exists
[ -f test.o ] && rm test.o

# Remove ZSOC.vcd if it exists
[ -f ZSOC.vcd ] && rm ZSOC.vcd

verilator -Wall -Wno-fatal \                                          
  -DTESTBENCH \
  -I../include \
  --timing \
  --bbox-unsup\
  --cc \
  ./Simulation/*.v ../CPU/*.v ../GPIO/*.v ../Memories/*.v ../Memories/*.sv ../screenI2C/*.v \
  ../BRAMS/gowin_dpb_program/*.v ../soc.v ../CLINT.v ../Buses/*.v \
  ../screenVGA/*.v \
  --exe sim_main.cpp \
  --top-module top \
  --CFLAGS "$(sdl2-config --cflags)" \
  --LDFLAGS "$(sdl2-config --libs) -lSDL2_ttf" \
  --trace 2> log.err
# Step 2: Build simulation binary
make -C obj_dir -f Vtop.mk Vtop   # Replace Vtest with your top module

# Step 3: Run simulation
time ./obj_dir/Vtop


surfer verilator.vcd  --state-file WaveView.ron
# Run gtkwave
# gtkwave gtkw.gtkw
