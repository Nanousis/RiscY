module textEngine (
    input clk,
    input reset,
    input [9:0] pixelAddress,
    input [5:0] char_write_addr,
    input ren,
    input wen,
    input [7:0] char_write,
//    output reg [31:0] char_read,
    output [7:0] pixelData,
    output reg error
);
    reg [7:0] charMemory [63:0];
    integer i;
    initial
    begin
        for(i=0;i<64;i=i+1)
        begin
            charMemory[i] = 8'd0;
        end
        charMemory[0] = "W";
        charMemory[1] = "a";
        charMemory[2] = "i";
        charMemory[3] = "t";
        charMemory[4] = "i";
        charMemory[5] = "n";
        charMemory[6] = "g";
        charMemory[7] = " ";
        charMemory[8] = "t";
        charMemory[9] = "o";
        charMemory[10] = " ";
        charMemory[11] = "s";
        charMemory[12] = "t";
        charMemory[13] = "a";
        charMemory[14] = "r";
        charMemory[15] = "t";
        charMemory[16] = "C";
        charMemory[17] = "l";
        charMemory[18] = "i";
        charMemory[19] = "c";
        charMemory[20] = "k";
        charMemory[21] = " ";
        charMemory[22] = "t";
        charMemory[23] = "h";
        charMemory[24] = "e";
        charMemory[25] = " ";
        charMemory[26] = "b";
        charMemory[27] = "u";
        charMemory[28] = "t";
        charMemory[29] = "t";
        charMemory[30] = "o";
        charMemory[31] = "n";
    end

    assign charOutput = charMemory[charAddress];
    
    reg [7:0] fontBuffer [1519:0];
    initial $readmemh("font.hex", fontBuffer);
    wire [5:0] charAddress;    
    wire [2:0] columnAddress;
    wire [7:0] charOutput, chosenChar;    
    wire topRow;    

    assign charAddress = {pixelAddress[9:8],pixelAddress[6:3]};
    assign columnAddress = pixelAddress[2:0];
    assign topRow = !pixelAddress[7];
    assign pixelData = outputBuffer;
    assign chosenChar = (charOutput >= 32 && charOutput <= 126) ? charOutput : 32;
    reg [7:0] outputBuffer;
    reg [23:0] counter=0;
    always @(posedge clk) begin
        if(reset == 0)
        begin
            outputBuffer <= 8'd0;
            charMemory[0] <= "L";
            charMemory[1] <= "o";
            charMemory[2] <= "a";
            charMemory[3] <= "d";
            charMemory[4] <= "i";
            charMemory[5] <= "n";
            charMemory[6] <= "g";
            charMemory[7] <= " ";
            charMemory[8] <= "a";
            charMemory[9] <= "n";
            charMemory[10] <= "d";
            charMemory[11] <= " ";
            charMemory[12] <= "r";
            charMemory[13] <= "e";
            charMemory[14] <= "s";
            charMemory[15] <= "s";
            charMemory[16] <= "e";
            charMemory[17] <= "t";
            charMemory[18] <= "t";
            charMemory[19] <= "i";
            charMemory[20] <= "n";
            charMemory[21] <= "g";
            charMemory[22] <= " ";
            charMemory[23] <= "t";
            charMemory[24] <= "h";
            charMemory[25] <= "e";
            charMemory[26] <= " ";
            charMemory[27] <= "C";
            charMemory[28] <= "P";
            charMemory[29] <= "U";
        end
        else
        begin
            if(ren == 1 && wen == 0)
            begin
//                char_read[7:0] <= charMemory[char_write_addr];
            end
            else if(wen == 1'b1 && ren == 1'b0)
            begin
                charMemory[char_write_addr] <= char_write;
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
        outputBuffer <= fontBuffer[((chosenChar-8'd32) << 4) + (columnAddress << 1) + (topRow ? 0 : 1)];
        counter <= counter + 1;
        if(counter == 24'hFFFFFF)
        begin
            counter <= 0;
            charMemory[63] <= charMemory[63] + 1;
        end
    end

endmodule