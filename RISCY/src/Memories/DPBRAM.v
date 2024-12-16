module DPBRAM #(
    parameter DATA_WIDTH = 16,  // Width of data
    parameter ADDR_WIDTH = 10  // Width of address
) (
    input clkA,                      // Clock signal
    input clkB,   
    input we_a,                     // Write enable for Port A
    input we_b,                     // Write enable for Port B
    input [ADDR_WIDTH-1:0] addr_a,  // Address for Port A
    input [ADDR_WIDTH-1:0] addr_b,  // Address for Port B
    input [DATA_WIDTH-1:0] din_a,   // Data input for Port A
    input [DATA_WIDTH-1:0] din_b,   // Data input for Port B
    output reg [DATA_WIDTH-1:0] dout_a,  // Data output for Port A
    output reg [DATA_WIDTH-1:0] dout_b   // Data output for Port B
);

    // Memory array
    (* ram_style = "block" *) reg [DATA_WIDTH-1:0] mem [0:(1 << ADDR_WIDTH)-1];
	wire gnd, vcc;
	assign gnd = 1'b0;
	assign vcc = 1'b1;

    // Port A operations
    always @(posedge clkA) begin
        if (we_a) begin
            mem[addr_a] <= din_a;  // Write data to Port A
        end else begin
            dout_a <= mem[addr_a]; // Read data from Port A
        end
    end

    // Port B operations
    always @(posedge clkB) begin
        if (we_b) begin
            mem[addr_b] <= din_b;  // Write data to Port B
        end else begin
            dout_b <= mem[addr_b]; // Read data from Port B
        end
    end



endmodule

