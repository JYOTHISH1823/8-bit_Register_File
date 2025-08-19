`timescale 1ns/1ps

module register_file_tb;

    reg clk;
    reg we;
    reg [2:0] write_addr;
    reg [7:0] write_data;
    reg [2:0] read_addr1;
    reg [2:0] read_addr2;
    wire [7:0] read_data1;
    wire [7:0] read_data2;

    // Instantiate DUT
    register_file dut(
        .clk(clk),
        .we(we),
        .write_addr(write_addr),
        .write_data(write_data),
        .read_addr1(read_addr1),
        .read_addr2(read_addr2),
        .read_data1(read_data1),
        .read_data2(read_data2)
    );

    // Clock generator
    always #5 clk = ~clk; // 10ns period

    initial begin
        $dumpfile("register_file.vcd");
        $dumpvars(0, register_file_tb);

        // Initialize signals
        clk = 0;
        we = 0;
        write_addr = 0;
        write_data = 0;
        read_addr1 = 0;
        read_addr2 = 0;

        // Write some values
        #10;
        we = 1; write_addr = 3'b000; write_data = 8'hAA;
        #10;
        write_addr = 3'b001; write_data = 8'h55;
        #10;
        we = 0;

        // Read values
        read_addr1 = 3'b000;
        read_addr2 = 3'b001;
        #20;

        // Finish simulation
        $finish;
    end

endmodule