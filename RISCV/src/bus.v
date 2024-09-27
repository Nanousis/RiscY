`include "config.vh"

module bus(input clk,
            input [31:0] PC,
            input [31:0] data_addr,
            input ren,
            input wen,
            input btn_out,
            input [31:0]memory_out,
            output reg mem_ren,
            output reg mem_wen,
            output reg screen_ren,
            output reg screen_wen,
            output reg btn_ren,
            output reg [31:0]data_out
);

always@(*)
begin
    if(data_addr<1024)
        begin
            mem_ren <=ren;
            mem_wen <=wen;
            screen_ren <=0;
            screen_wen <=0;
            btn_ren <=0;
            data_out <=memory_out;
        end
    else if(data_addr>=1024 && data_addr <(1024+64))
        begin
            mem_ren <=0;
            mem_wen <=0;
            btn_ren <=0;
            screen_ren <=0;//should change
            screen_wen <=wen;
            data_out <=memory_out;
        end
    else if(data_addr>=2048 && data_addr <(2048+4))
        begin
            mem_ren <=0;
            mem_wen <=0;
            screen_ren <=0;
            screen_wen <=0;
            btn_ren <=ren;
            data_out <=(btn_out==1'b1)?32'b0:32'h1010101;
        end
    else
        begin
            mem_ren <=0;
            mem_wen <=0;
            screen_ren <=0;
            screen_wen <=0;
            btn_ren <=0;
            data_out <= 0;
        end;
end


endmodule