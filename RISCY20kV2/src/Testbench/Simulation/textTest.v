module textTest (
    input clk,
    input reset,
    input [9:0] pixelAddress,
    input [15:0] char_write_addr,
    input ren,
    input wen,
    input [7:0] char_write,
//    output reg [31:0] char_read,
    output [7:0] pixelData,
    output reg error
);
    reg [0:64*8-1] charMemory [0:19];

integer i;
integer j;
    wire [6:0] line=char_write_addr/64;
    always @(posedge clk) begin
        if(reset == 0)
        begin
            for(i=0;i<20;i=i+1)
            begin
                charMemory[i] <= "xxx";
            end
        end
        else
        begin
            if(ren == 1 && wen == 0)
            begin
//                char_read[7:0] <= charMemory[char_write_addr];
            end
            else if(wen == 1'b1 && ren == 1'b0)
            begin
                charMemory[line][(char_write_addr%64)*8+:8] <= char_write;
            end
            else if(ren == 1 || wen == 1 )
            begin
                error <= 1;
            end
            else
            begin
                error <= 0;
            end
        end
    end

endmodule