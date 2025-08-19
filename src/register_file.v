module register_file(
    input clk,
    input we,                    // Write enable
    input [2:0] write_addr,      // 3-bit write address
    input [7:0] write_data,      // 8-bit data to write
    input [2:0] read_addr1,      // 3-bit read address 1
    input [2:0] read_addr2,      // 3-bit read address 2
    output reg [7:0] read_data1, // Read data 1
    output reg [7:0] read_data2  // Read data 2
);

    // 8 registers of 8 bits
    reg [7:0] regs [7:0];

    integer i;

    // Optional: Reset all registers to 0
    initial begin
        for(i=0; i<8; i=i+1)
            regs[i] = 8'b0;
    end

    // Write operation (on positive clock edge)
    always @(posedge clk) begin
        if(we)
            regs[write_addr] <= write_data;
    end

    // Read operations (combinational)
    always @(*) begin
        read_data1 = regs[read_addr1];
        read_data2 = regs[read_addr2];
    end

endmodule