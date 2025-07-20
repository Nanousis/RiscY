#!/bin/bash

iverilog -g2012 -o sim.out \
  tb/test_sdramc.sv \
  tb/MT48LC2M32B2.v \
  src/sdram_controller_hs.v \
  src/ram.sv \
  tb/prim_sim.v 

vvp sim.out
surfer wave.vcd --state-file signals.ron
# surfer log.vcd --state-file signals2.ron