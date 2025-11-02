#!/bin/bash

# Remove test.o if it exists
[ -f test.o ] && rm test.o

# Remove ZSOC.vcd if it exists
[ -f ZSOC.vcd ] && rm ZSOC.vcd

# Run iverilog
iverilog -Winfloop -DTESTBENCH -o test.o -s test -I../include ./soctb.v  ./Simulation/*.v ../CPU/*.v ../GPIO/*.v ../Memories/*.v ../screenI2C/*.v  ../BRAMS/gowin_dpb_program/*.v ../*.v ../InteruptControllers/*.v ../Buses/*.v 

# Run vvp
vvp test.o

# Run gtkwave
gtkwave gtkw.gtkw
