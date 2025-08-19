->8-bit Register File (Verilog)

Description:
A simple 8-bit Register File module in Verilog with two read ports and one write port.
Demonstrates memory arrays, combinational reads, and clocked writes, fully simulated using Icarus Verilog + GTKWave.

->Project Structure
register_file_8bit/
├── src/
│   └── register_file.v       # Verilog source code
├── tb/
│   └── register_file_tb.v    # Testbench
├── scripts/
│   ├── run_icarus.bat        # Windows batch file
│   └── run_icarus.sh         # Linux/Mac shell script
├── docs/
│   └── register_file_diagram.png # Optional block diagram
├── .gitignore
└── README.md

->Requirements
Visual Studio Code with Verilog extension
Icarus Verilog (iverilog)
GTKWave
Git (optional for version control)

->Verify installation in PowerShell:
iverilog -v
gtkwave --version
git --version

->How to Run

Clone the repository:

git clone https://github.com/JYOTHISH1823/8-bit_Register_File.git
cd register_file_8bit


Compile the design and testbench:

iverilog -o register_file_tb.out src/register_file.v tb/register_file_tb.v

Run the simulation:
 vvp register_file_tb.out
View waveform in GTKWave:
 gtkwave register_file.vcd
Note: Observe read_data1 and read_data2 signals to see values written to registers.

Learning Outcomes

Using memory arrays in Verilog (reg [7:0] array[7:0])
Writing clocked write operations
Designing combinational read ports
Running simulations in VS Code + Icarus Verilog
Viewing waveforms with GTKWave
Structuring a professional GitHub project