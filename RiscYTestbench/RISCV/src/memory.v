`include "config.vh"

module memory(input clk,
            input [`TEXT_BITS-3:0] PC,
            input reset,
            output reg [31:0] instr,
            input [`DATA_BITS-3:0] data_addr,
            input ren, wen,
            input [31:0] data_in,
            output reg [31:0] data_out,
            input [3:0] byte_select_vector,
            output reg ready
);
localparam text_size=600;
localparam data_size=700;

reg [31:0] instr_mem[text_size-1:0];
reg [31:0] data_mem[data_size-1:0];
integer i;
initial begin
     for(i=0; i<text_size; i=i+1)
     begin
         instr_mem[i] = 32'h13;
     end
     for(i=0; i<data_size; i=i+1)
     begin
         data_mem[i] = 32'h0;
     end
    
    $readmemh(`TEXT_HEX, instr_mem);
    $readmemh(`DATA_HEX, data_mem);
end

localparam STATE_IDLE = 2'b00;
localparam STATE_READING = 2'b01;
localparam STATE_WRITING = 2'b10;
localparam STATE_FINISHED = 2'b11;
reg [1:0] state = 0;
reg [4:0] cnt = 0;
reg [`DATA_BITS-1:0] saved_data_addr = 0;
always@(posedge clk)
begin 

    if(PC < text_size)
    begin
        instr <= instr_mem[PC];
    end
    ready <= 1;
    case(state)
    STATE_IDLE:
    begin
    if(data_addr < 1024)
    begin
        cnt <= 0;
        saved_data_addr <= data_addr;
        if(wen == 1'b1 && ren==1'b1)
            begin
                data_out <= data_in;
            end
            else if (wen == 1'b1 && ren==1'b0) begin
                if (byte_select_vector[3] == 1'b1)
                    data_mem[data_addr][31:24] <= data_in[31:24];
                if (byte_select_vector[2] == 1'b1)
                    data_mem[data_addr][23:16] <= data_in[23:16];
                if (byte_select_vector[1] == 1'b1)
                    data_mem[data_addr][15:8] <= data_in[15:8];
                if (byte_select_vector[0] == 1'b1)
                    data_mem[data_addr][7:0] <= data_in[7:0];
            end
            else if (ren == 1'b1 && wen==1'b0)
            begin
                ready<=0;
                state <= STATE_READING;
            end
            else
                data_out <= 32'b0;
        end
        else
        begin
            data_out <= 32'b0;
        end
    end
    STATE_READING:
    begin
        cnt <= cnt + 1;
        if(cnt > 5'd5)
        begin
            ready <= 1;
            state <= STATE_IDLE;
            data_out <= data_mem[saved_data_addr];
        end
        else
        begin
            ready <= 0;
            state <= STATE_READING;
        end
    end
    STATE_WRITING:
    begin

    end
    STATE_FINISHED:
    begin
        
    end

    endcase

       
end


endmodule