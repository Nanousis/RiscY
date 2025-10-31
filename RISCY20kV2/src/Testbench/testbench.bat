@echo off
REM ================================
REM  ZSOC Simulation Script (Windows)
REM ================================

REM Remove test.o if it exists
if exist test.o del /f /q test.o

REM Remove ZSOC.vcd if it exists
if exist ZSOC.vcd del /f /q ZSOC.vcd

REM Convert flash.bin to flash.hex (requires xxd in PATH)
@REM xxd -p -c1 Simulation\flash.bin > Simulation\flash.hex

REM Run iverilog compilation
echo Compiling Verilog sources...
iverilog -g2012 -Winfloop -DTESTBENCH -DINSTR_LIMIT=%1 -o test.o -s test -I../include ^
  .\soctb.sv ^
  .\Simulation\*.v ^
  ..\CPU\*.v ^
  ..\CPU\*.sv ^
  ..\GPIO\*.v ^
  ..\GPIO\*.sv ^
  ..\Memories\*.v ^
  ..\Memories\*.sv ^
  ..\screenI2C\*.v ^
  ..\screenVGA\*.v ^
  ..\gowin_rpll_800vga\*.v ^
  ..\BRAMS\gowin_dpb_program\*.v ^
  ..\soc.v ^
  ..\CLINT.v ^
  ..\Buses\*.v > out.log 2>&1

REM Check for errors
findstr /i "error:" out.log >nul
if %errorlevel%==0 (
    echo.
    echo [ERROR] Compilation errors detected!
    type out.log | findstr /i "error:"
    exit /b 1
)

REM Run simulation
echo Running simulation...
time /t
vvp -lxt-speed test.o
time /t

REM Uncomment the following line if you want to run Python VCD verification
REM python vcd_verification.py ZSOC.vcd

REM Run surfer for waveform visualization
if exist ZSOC.vcd (
    echo Launching Surfer...
    surfer.exe ZSOC.vcd --state-file .\test.surf.ron
) else (
    echo ZSOC.vcd not found.
)

echo.

echo Simulation complete.
pause
