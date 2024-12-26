@echo off
rem Batch script to run the testbench commands

rem Delete test.o if it exists
if exist test.o del test.o

rem Delete ZSOC.vcd if it exists
if exist ZSOC.vcd del ZSOC.vcd

rem Run iverilog
iverilog -DTESTBENCH -o test.o -s test -I../include ./soctb.v  ./Simulation/*.v ../CPU/*.v ../GPIO/*.v ../Memories/*.v ../screenI2C/*.v  ../BRAMS/gowin_dpb_program/*.v ../*.v ../Buses/*.v 

rem Run vvp
vvp test.o

rem Run gtkwave
gtkwave gtkw.gtkw
