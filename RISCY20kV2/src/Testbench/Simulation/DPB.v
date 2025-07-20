module DPB2 (
    output reg [7:0] DOA,
    output reg [7:0] DOB,
    input CLKA, OCEA, CEA, RESETA, WREA,
    input CLKB, OCEB, CEB, RESETB, WREB,
    input [2:0] BLKSELA, BLKSELB,
    input [13:0] ADA, ADB,
    input [17:0] DIA, DIB
);
parameter READ_MODE0 = 1'b0;
parameter READ_MODE1 = 1'b0;
parameter WRITE_MODE0 = 2'b00;
parameter WRITE_MODE1 = 2'b00;
parameter BIT_WIDTH_0 = 8;
parameter BIT_WIDTH_1 = 8;
parameter BLK_SEL_0 = 3'b000;
parameter BLK_SEL_1 = 3'b000;
parameter RESET_MODE = "SYNC";
    reg [7:0] memory [0:2047]; // Assuming 11-bit address
    integer i;

    // initial begin

    //     for (i = 0; i < 2048; i = i + 1) begin
    //         $dumpvars(1,memory.data[i]);
    //     end
    // end

    // Port A
    always @(posedge CLKA) begin
        if (RESETA)
            DOA <= 8'b0;
        else if (CEA) begin
            if (WREA)
                memory[ADA[10:0]] <= DIA[7:0];
            if (OCEA)
                DOA <= memory[ADA[10:0]];
        end
    end

    // Port B
    always @(posedge CLKB) begin
        if (RESETB)
            DOB <= 8'b0;
        else if (CEB) begin
            if (WREB)
                memory[ADB[10:0]] <= DIB[7:0];
            if (OCEB)
                DOB <= memory[ADB[10:0]];
        end
    end
endmodule
