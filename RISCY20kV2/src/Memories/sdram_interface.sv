module sdram_interface(
    input sdram_clk,
    input cpu_clk,
    input reset_n,
    input [31:0] data_in,
    input [31:0] address,
    input [31:0] pc,
    input [3:0] byte_select_vector,
    input ram_ack,
    input cpu_ren,
    input cpu_wen,
    input sdram_ready,

    output sdram_ren,
    output sdram_wen,
    output reg [31:0] sdram_addr, // 32 bits address
    output reg [31:0] sdram_data_out, //data to write from SDRAM
    output reg [3:0] sdram_byte_select_vector, //byte select vector for SDRAM

    input [31:0] sdram_data_in, //data read from SDRAM
    output reg [31:0] data_out, //data to read from CPU
    output reg [31:0] instr_out, //instruction output to CPU
    output reg ready
);

typedef enum logic [1:0] {
    IDLE   = 2'b00,
    READ   = 2'b01,
    WRITE   = 2'b10,
    AWAIT_ACK = 2'b11
} state_t;

state_t state, next_state;
state_t sdram_state, sdram_next_state;

reg [128*8:0] test_str;

reg sdram_ren_reg, sdram_wen_reg; // SDRAM read and write enable signals

assign sdram_ren = sdram_ren_reg& ~ram_ack;
assign sdram_wen = sdram_wen_reg & ~ram_ack;

// reg [31:0] address_sync;
// reg [31:0] data_sync;


always_ff@(posedge sdram_clk or negedge reset_n)
begin
    if(reset_n == 1'b0) begin
        sdram_state <= IDLE;
        sdram_ren_reg <= 1'b0;
        sdram_wen_reg <= 1'b0;
    end
    else begin
        case(sdram_state)
        IDLE: begin
            if(!ready)
                sdram_state <= sdram_next_state;
        end
        READ: begin
            sdram_ren_reg <= 1'b1;
            sdram_wen_reg <= 1'b0;
            sdram_state <= AWAIT_ACK;
        end
        WRITE: begin
            sdram_ren_reg <= 1'b0;
            sdram_wen_reg <= 1'b1;
            sdram_state <= AWAIT_ACK;
        end
        AWAIT_ACK: begin
            if(ram_ack) begin
                sdram_ren_reg <= 1'b0;
                sdram_wen_reg <= 1'b0;
                if(sdram_ren_reg == READ) begin
                    data_out <= sdram_data_in; // read data from SDRAM
                end
                if(state == AWAIT_ACK || state == IDLE) begin
                    sdram_state <= IDLE;
                end
                // else if(sdram_wen == WRITE) begin
                //     // write operation is done, no need to do anything here
                // end
            end
        end
        endcase
    end
end

always_ff@(posedge cpu_clk or negedge reset_n)
begin
    if(reset_n == 1'b0) begin
        test_str <= "SDRAM Interface Reset";
        ready <= 1'b1;
        state <= IDLE;
        next_state <= IDLE;
        sdram_next_state <= IDLE;
    end
    else begin
        case(state)
        IDLE: begin
            ready <= 1'b1;
            test_str <= "IDLE";
            if(cpu_ren)begin
                test_str <= "CPU Read Request";
                ready <= 1'b0;
                sdram_addr <= address;
                sdram_byte_select_vector <= 0; // masks are not used in risc-v for read
                sdram_next_state <= READ;
                state <= READ; // move to READ state
            end
            else if(cpu_wen) begin
                test_str <= "CPU write Request";
                ready <= 1'b0;
                sdram_addr <= address;
                sdram_data_out <= data_in;
                sdram_byte_select_vector <= ~byte_select_vector; // masks are used in risc-v for write
                sdram_next_state <= WRITE;
                state <= WRITE; // move to WRITE state
            end
        end
        READ: begin
            test_str <= "READ State";
            state <= AWAIT_ACK;
        end
        WRITE: begin
            test_str <= "WRITE State";
            state <= AWAIT_ACK;
        end
        AWAIT_ACK: begin
            sdram_next_state <= IDLE;
            test_str <= "AWAIT_ACK State";
            if(sdram_ren == 1'b0 && sdram_wen == 1'b0) begin
                state <= IDLE;
                ready <= 1'b1; // operation is done, ready for next operation
            end
        end
        endcase
    end

end

endmodule