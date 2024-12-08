module ramData( 
    input clk,
    input reset,
    input [31:2] PC,
    input [31:2] address,
    input ren,
    input wen,
    input [31:0] data_in,
    input [3:0] byte_select_vector,

    output [31:0] instr,
    output [31:0] data_out,
    output reg cpu_stall,

    output [CS_WIDTH-1:0] O_psram_ck,    
    output [CS_WIDTH-1:0] O_psram_ck_n,
    inout [CS_WIDTH-1:0] IO_psram_rwds,
    inout [DQ_WIDTH-1:0] IO_psram_dq,
    output [CS_WIDTH-1:0] O_psram_reset_n,
    output [CS_WIDTH-1:0] O_psram_cs_n 
);  
    parameter  DQ_WIDTH = 16;
    parameter  CS_WIDTH = 2;

    /*************************************************/
    //                       PLL                     //
    /*************************************************/

    wire memory_clk;
    wire lock;

    Gowin_rPLL_ram generate_memory_clk(
        .clkout(memory_clk), // 162MHz
        .lock(lock), 
        .clkoutd(clk_d),
        .clkin(clk) // crystal clock 27Mhz
    );

    wire user_clk;
    reg [31:0] wr_data1;
    wire [31:0] rd_data1;
    wire rd_data_valid1;
    reg [20:0] addr1;
    reg cmd1;
    reg cmd_en1;
    reg [3:0] data_mask1;



    /*************************************************/
    //                PSRAM INTERFACE                //
    /*************************************************/

    PSRAM_Memory_Interface_HS_2CH_Top psrams_Interface(
        //***** CLK | RESET *****//
		.clk(clk), //input clk : 27Mhz
		.rst_n(reset), 
		.memory_clk(memory_clk), //input memory_clk : 162Mhz
		.pll_lock(lock), 
        .clk_out(user_clk), //output clk : memory_clk / 2 -> 81Mhz

        //**** PSRAM's IO PINS ****//
		.O_psram_ck(O_psram_ck), //output [1:0] O_psram_ck
		.O_psram_ck_n(O_psram_ck_n), //output [1:0] O_psram_ck_n
		.IO_psram_rwds(IO_psram_rwds), //inout [1:0] IO_psram_rwds
		.O_psram_reset_n(O_psram_reset_n), //output [1:0] O_psram_reset_n
		.IO_psram_dq(IO_psram_dq), //inout [15:0] IO_psram_dq
		.O_psram_cs_n(O_psram_cs_n), //output [1:0] O_psram_cs_n

        //**** PSRAM CHANNEL 0 : INSTRUCTION READ ONLY ****//
		.init_calib0(calib0), //output init_calib0
		.cmd0(cmd0), //input cmd0
		.cmd_en0(cmd_en0), //input cmd_en0
		.addr0(addr0), //input [20:0] addr0
        .wr_data0(wd0), //input [31:0] wr_data1
        .rd_data0(rd0), //output [31:0] rd_data0
        .rd_data_valid0(rd_valid0), //output rd_data_valid0
        .data_mask0(mask0), //input [3:0] data_mask0
		

        //**** PSRAM CHANNEL 1 : DATA WRITE AND READ ****//
        .init_calib1(calib1), //output init_calib1
        .cmd1(cmd1), //input cmd1
        .cmd_en1(cmd_en1), //input cmd_en1
        .addr1(addr1), //input [20:0] addr1
		.wr_data1(wr_data1), //input [31:0] wr_data0
		.rd_data1(rd_data1), //output [31:0] rd_data1
		.rd_data_valid1(rd_data_valid1), //output rd_data_valid1
		.data_mask1(data_mask1) //input [3:0] data_mask1
	);

    /*************************************************/
    //                   DATA CONTROLLER             //
    /*************************************************/
    

    //********** RAM CONTROLLER / FSM **********//
    reg [1:0] state;

    localparam IDLE = 2'b00;
    localparam READ = 2'b01;
    localparam WRITE = 2'b10;

    reg [7:0] rd_cycle;
    reg [31:0] data_rd;
    
    reg [7:0] wr_cycle;
    
    always @(posedge clk)begin
        if(wen)begin
            wr_data1 <= data_in;
            addr1 <= address;
            wen_fsm <= wen;
        end
        else if(ren) begin
            addr1 <= address;
            ren_fsm <= ren;
        end
        else begin
            wen_fsm <= 0;
            ren_fsm <= 0;
        end
    end
    

    reg ren_fsm, wen_fsm;

    always @(posedge user_clk or negedge reset)begin
        if(!reset)begin
            state <= IDLE;
            wr_cycle <= 8'b0;
            rd_cycle <= 8'b0;
            data_rd <= 32'hdeadbeef;
            cmd_en1 <= 0;
            cpu_stall <=1;
        end
        else begin
            case (state)
                //*****IDLE STATE*****//
                IDLE: begin
                cpu_stall<=1;
                    if(wen_fsm)begin
                        wr_cycle <= 8'b0;
                        state <= WRITE;
//                        cpu_stall<=0;
                    end
                    else if(ren_fsm)begin
                        rd_cycle <= 8'b0;
                        state <= READ;
//                        cpu_stall<=0;
                    end
                    else begin
                       state <= IDLE;
                    end
                    
                end
                //*****READ STATE*****//
                READ: begin
                cpu_stall<=0;

                rd_cycle <= rd_cycle + 8'b1;
                
                
                if (rd_cycle == 0) begin
                    cmd1 <= 1'b0;
                    cmd_en1 <= 1'b1;
                    data_mask1 <= 4'h0;
                end else begin
                    cmd_en1 <= 1'b0;
                    if (rd_data_valid1) begin
                        data_rd <= rd_data1;
//                        cpu_stall<=1;
                        state <= IDLE;
                    end
                end
                end
                //*****WRITE STATE : 14*****//
                WRITE: begin
                   cpu_stall<=0;
                   wr_cycle <= wr_cycle + 8'b1;
                   
                    if(wr_cycle == 14)begin
//                        cpu_stall<=1;
                        state <= IDLE;
                    end
                    
                    if (wr_cycle == 0) begin
                        data_mask1 <= ~4'hf;
                        cmd1 <= 1'b1;
                        cmd_en1 <= 1'b1;
                    end else begin
                    // mask off all other cycles
                        cmd_en1 <= 1'b0;
                        data_mask1 <= 4'hf;
                    end
                end
            endcase
        end
    end

    assign data_out = data_rd;




endmodule