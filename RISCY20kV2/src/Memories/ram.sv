module ram_controller
(

    // inferred ports connecting to SDRAM
    output O_sdram_clk,
    output O_sdram_cke,
    output O_sdram_cs_n,
    output O_sdram_cas_n,
    output O_sdram_ras_n,
    output O_sdram_wen_n,
    inout [31:0] IO_sdram_dq,
    output [10:0] O_sdram_addr,
    output [1:0] O_sdram_ba,
    output [3:0] O_sdram_dqm,

    //  interface for data
    output logic interface_ack,
    // interface for instruction cache
    input icache_ren,
    input [31:0] icache_addr,
    output logic icache_ack,

    // interface for vga
    input vga_ren,
    input [31:0] vga_addr,
    output logic vga_ack,

    input cpu_clk,
    input sdram_clk,
    input reset_n,
    input ren,
    input wen,
    input [31:0] address,
    input [(32*16)-1:0] data_in,
    input [3:0] mask,  // data mask for write operations
    input [7:0] len,  // data mask for write operations
    output logic [31:0] data_out,
    output logic ready
);
    // register and wires to 'sdram_controller'
    wire I_sdrc_rst_n = reset_n;
    wire I_sdrc_clk = sdram_clk;
    wire I_sdram_clk = sdram_clk;
    logic I_sdrc_cmd_en;
    logic [2:0] I_sdrc_cmd;
    logic I_sdrc_precharge_ctrl;
    logic I_sdram_power_down;
    logic I_sdram_selfrefresh;
    logic [20:0] I_sdrc_addr;
    logic [3:0] I_sdrc_dqm;
    logic [31:0] I_sdrc_data;
    logic [7:0] I_sdrc_data_len;
    wire [31:0] O_sdrc_data;
    wire O_sdrc_init_done;
    wire O_sdrc_cmd_ack;


    SDRAM_Controller_HS_Top sdram_controller (
        // inferred ports connecting to SDRAM
        .O_sdram_clk,
        .O_sdram_cke,
        .O_sdram_cs_n,
        .O_sdram_cas_n,
        .O_sdram_ras_n,
        .O_sdram_wen_n,
        .O_sdram_dqm,
        .O_sdram_addr,
        .O_sdram_ba,
        .IO_sdram_dq,

        // interface
        .I_sdrc_rst_n,
        .I_sdrc_clk,
        .I_sdram_clk,
        .I_sdrc_cmd_en,
        .I_sdrc_cmd,
        .I_sdrc_precharge_ctrl,
        .I_sdram_power_down,
        .I_sdram_selfrefresh,
        .I_sdrc_addr,
        .I_sdrc_dqm,
        .I_sdrc_data,
        .I_sdrc_data_len,
        .O_sdrc_data,
        .O_sdrc_init_done,
        .O_sdrc_cmd_ack
    );
    typedef enum logic [2:0] {
        INIT   = 3'b000,
        IDLE   = 3'b001,
        READ   = 3'b010,
        AWAIT_READ   = 3'b011,
        WRITE   = 3'b100,
        PRECHARGE = 3'b101,
        AUTO_REFRESH = 3'b110,
        AWAIT_ACK = 3'b111
    } state_t;
    state_t state, next_state;

    // typedef enum logic [1:0] {
    //     INTERF   = 2'b00,
    //     FRAMEBUFFER   = 2'b01,
    //     ICACHE   = 2'b10,
    // } memory_origin;
    // memory_origin mem_origin;

    logic [2:0] read_cnt;
    reg [100*8:0] test_str;
    reg [3:0] ptr;

    // 4096 or more refreshes should happen in any 64ms ~15us/refresh
    // This is about 900 cycles at 60MHz but we will play it safe with 600 cycles
    localparam AUTO_REFRESH_INTERVAL= 600; 

    logic [10:0] auto_refresh_counter;

    // vga logic
    logic vga_work=0;
    logic icache_work=0;


    always_ff @(posedge sdram_clk or negedge reset_n) begin
        if (!reset_n) begin
            state <= INIT;
            ready <= 0;
            data_out <= 0;
            I_sdrc_cmd_en <= 0;
            I_sdrc_cmd <= 3'b000; // no command
            I_sdrc_addr <= 0;
            I_sdrc_data <= 0;
            I_sdrc_data_len <= 0;
            auto_refresh_counter <= 0;
            I_sdrc_dqm <= 4'b0000; // no data mask
            ptr <= 0;
            I_sdrc_precharge_ctrl <= 0;
            I_sdram_power_down <= 0;
            I_sdram_selfrefresh <= 1; // enable self-refresh mode
            read_cnt <= 0;
            I_sdrc_precharge_ctrl <= 1;
            I_sdram_power_down <= 0;
            I_sdram_selfrefresh <= 0;
            I_sdrc_dqm <= 4'b000; // write all bytes
            vga_work <= 0; // reset vga work flag
            interface_ack <= 0;
            icache_work <= 0; // reset icache work flag
            vga_ack <= 0;
            icache_ack <= 0; // reset icache ack signal

        end else begin
            auto_refresh_counter <= auto_refresh_counter + 1;
            case (state)
                INIT: begin
                    test_str <= "initializing";
                    // wait for SDRAM initialization to complete
                    if (O_sdrc_init_done) begin
                        I_sdrc_cmd_en <= 1;
                        I_sdrc_cmd <= 3'b001;  // auto-refresh
                        state <= AWAIT_ACK;
                        next_state <= IDLE; // next state is auto-refresh
                    end
                end
                AWAIT_ACK: begin
                    test_str <= "awaiting acknowledgment";
                    I_sdrc_cmd_en <= 0; // disable command
                    if (O_sdrc_cmd_ack) begin
                        state <= next_state; // transition to the next state after command acknowledgment
                        if(next_state == READ) begin
                            I_sdrc_cmd_en <= 1; // re-enable command for read/write
                            I_sdrc_cmd <= 3'b101; // read command
                            if(vga_work || icache_work) begin
                                I_sdrc_data_len <= 15; // set data length
                                I_sdrc_dqm <= 0; // set data mask
                            end 
                            else begin
                                I_sdrc_dqm <= mask; // set data mask
                                I_sdrc_data_len <= len; // set data length
                            end
                        end 
                        if(next_state == WRITE) begin
                            I_sdrc_cmd_en <= 1; // re-enable command for read/write
                            I_sdrc_cmd <= 3'b100; // write command
                            I_sdrc_dqm <= mask; // set data mask
                            I_sdrc_data <= data_in[31:0]; // set data to write
                            ptr <= 4'd0;
                            I_sdrc_data_len <= len; // set data length
                        end 
                        if (next_state == PRECHARGE) begin
                            I_sdrc_precharge_ctrl <= 1; // enable precharge control signal
                        end
                        if (next_state == AUTO_REFRESH) begin
                            I_sdrc_cmd <= 3'b001; // auto-refresh command
                            I_sdrc_cmd_en <= 1; // enable command
                        end
                        if (next_state == IDLE) begin
                            ready <= 1; // set ready signal when transitioning to idle
                        end else begin
                            ready <= 0; // reset ready signal for other states
                        end
                    end
                end
                IDLE: begin
                    vga_ack <= 0;
                    interface_ack <= 0; // reset interface ack signal
                    test_str <= "idle";
                    read_cnt <= 0; // reset read counter
                    I_sdrc_cmd <=0; // no command
                    vga_work <= 0; // reset vga work flag
                    icache_work <= 0; // reset icache work flag
                    if(auto_refresh_counter >= AUTO_REFRESH_INTERVAL)begin
                        ready <= 0; // reset ready signal
                        auto_refresh_counter <= 0; // reset auto-refresh counter
                        state <= AUTO_REFRESH; // transition to auto-refresh state
                        next_state <= IDLE; // next state is idle
                    end
                    // this may cause issues if cpu is also trying to access SDRAM
                    else if(vga_ren) begin
                        ready <= 0; // reset ready signal for vga read operation
                        I_sdrc_cmd_en <= 1; // enable command
                        I_sdrc_cmd <= 3'b011; // auto-precharge command
                        I_sdrc_addr <= vga_addr[20:0]; // set address
                        state <= AWAIT_ACK; // wait for command acknowledgment
                        next_state <= READ; // next state is read
                        vga_work <= 1; // set vga work flag
                    end
                    else begin
                        if(wen)begin
                            ready <= 0; // reset ready signal for write operation
                            I_sdrc_cmd_en <= 1; // enable command
                            I_sdrc_cmd <= 3'b011; // auto-precharge command
                            I_sdrc_addr <= address[20:0]; // set address
                            state <= AWAIT_ACK; // wait for command acknowledgment
                            next_state <= WRITE; // next state is write
                        end
                        if(ren) begin
                            ready <= 0; // reset ready signal for read operation
                            I_sdrc_cmd <= 3'b011; // auto-precharge command
                            I_sdrc_cmd_en <= 1; // enable command
                            I_sdrc_addr <= address[20:0]; // set address
                            state <= AWAIT_ACK; // wait for command acknowledgment
                            next_state <= READ; // next state is read
                        end
                        else if(icache_ren) begin
                            ready <= 0; // reset ready signal for instruction cache read operation
                            icache_ack <= 0; // reset icache ack signal
                            I_sdrc_cmd_en <= 1; // enable command
                            I_sdrc_cmd <= 3'b011; // auto-precharge command
                            I_sdrc_addr <= icache_addr[20:0]; // set address
                            icache_work <= 1; // set icache work flag
                            state <= AWAIT_ACK; // wait for command acknowledgment
                            next_state <= READ; // next state is read
                        end
                    end
                end

                READ: begin
                    test_str <= "read";
                    I_sdrc_cmd_en <= 0; // disable command
                    if (read_cnt == 3'b100) begin // check if we should read
                        if(vga_work)begin
                            vga_ack <= 1; // reset vga ack signal
                        end
                        if(icache_work) begin
                            icache_ack <= 1; // acknowledge icache read operation
                        end
                        data_out <= O_sdrc_data; // read data from SDRAM
                        ptr <= ptr + 1; // increment pointer
                        if (ptr == I_sdrc_data_len) begin 
                            ready <= 1; // set ready signal
                            state <= IDLE; // transition to idle state
                            icache_ack <= 0; // reset icache ack signal
                            icache_work <= 0; // reset icache work flag
                            if(vga_work) begin
                                test_str <= "VGA read done";
                                vga_ack <= 0; // acknowledge vga read operation
                                vga_work <= 0; // reset vga work flag
                            end
                            else if(icache_work) begin
                                test_str <= "ICACHE read done";
                                icache_ack <= 0; // acknowledge icache read operation
                                icache_work <= 0; // reset icache work flag
                            end
                            else begin
                                test_str <= "INTERFACE read done";
                                interface_ack <= 1; // acknowledge interface read operation
                            end
                        end
                    end
                    else begin
                        ptr <= 0; // reset pointer
                        read_cnt <= read_cnt + 1; // increment read counter
                    end
                end
                AWAIT_READ: begin

                end

                WRITE: begin
                    test_str <= "write";
                    I_sdrc_cmd_en <= 0; // disable command
                    if(ptr < len) begin
                        I_sdrc_data <= data_in[((ptr+1)*32)+:32]; // write data to SDRAM
                        ptr <= ptr + 1; // increment pointer
                    end else begin
                        I_sdrc_cmd_en <= 0; // disable command
                        state <= AWAIT_ACK; // wait for command acknowledgment
                        next_state <= IDLE; // next state is idle
                        if(vga_work) begin
                            vga_ack <= 1; // acknowledge vga read operation
                            vga_work <= 0; // reset vga work flag
                        end
                        if(icache_work) begin
                            icache_ack <= 1; // acknowledge icache read operation
                            icache_work <= 0; // reset icache work flag
                        end
                        else begin
                            vga_ack <= 0; // reset vga ack signal
                            interface_ack <= 1; // acknowledge interface read operation
                        end
                    end
                end

                PRECHARGE: begin
                    // THIS IS NOT USED
                    test_str <= "precharge state";
                    I_sdrc_precharge_ctrl <= 1; // activate precharge control signal
                    ready <= 1;
                    state <= IDLE;
                end

                AUTO_REFRESH: begin
                    auto_refresh_counter <= 0; // reset auto-refresh counter
                    test_str <= "auto-refresh state";
                    // I_sdram_selfrefresh <= 1; // activate self-refresh mode
                    I_sdrc_cmd_en <= 1; // enable command
                    I_sdrc_cmd <= 3'b001; // auto-refresh command
                    state <= AWAIT_ACK;
                    next_state <= IDLE; // next state is idle
                end
                default: state <= INIT; // reset to init state on unknown state
            endcase
        end
    end


endmodule