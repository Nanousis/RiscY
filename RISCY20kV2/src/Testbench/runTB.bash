#!/bin/bash

# Remove test.o if it exists
[ -f test.o ] && rm test.o

# Remove ZSOC.vcd if it exists
[ -f ZSOC.vcd ] && rm ZSOC.vcd

# Run iverilog
iverilog -g2012 -Winfloop -DTESTBENCH -o test.o -s test -I../include ./soctb.v \
  ./Simulation/*.v \
  ../CPU/*.v \
  ../GPIO/*.v \
  ../GPIO/*.sv \
  ../Memories/*.v \
  ../Memories/*.sv \
  ../screenI2C/*.v \
  ../screenVGA/*.v \
  ../gowin_rpll_800vga/*.v \
   ../BRAMS/gowin_dpb_program/*.v \
   ../soc.v \
   ../CLINT.v  \
   ../Buses/*.v >out.log 2>&1

# Run vvp
# time vvp test.o > log.txt 2>&1
time vvp test.o

python vcd_verification.py 

# Run gtkwave
# gtkwave gtkw.gtkw
surfer ZSOC.vcd --state-file iverilog.ron