@echo off
rem Batch script to run the testbench commands

rem Delete test.o if it exists
if exist test.o del test.o

rem Delete ZSOC.vcd if it exists
if exist ZSOC.vcd del ZSOC.vcd

rem Run iverilog
iverilog -d testbench -o test.o -s test *.v ./cpu/*.v

rem Run vvp
vvp test.o

rem Run gtkwave
gtkwave gtkw.gtkw
