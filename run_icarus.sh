#!/bin/bash

echo "Compiling Register File..."
iverilog -o register_file_tb.out ../src/register_file.v ../tb/register_file_tb.v

echo "Running Simulation..."
vvp register_file_tb.out

echo "Opening GTKWave..."
gtkwave register_file.vcd
