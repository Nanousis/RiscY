module ramData( 
    input clk,
    input reset,
    input [31:2] PC,
    input [31:0] address,
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
          .clkin(clk) // crystal clock 27Mhz
      );

    


    /*************************************************/
    //                PSRAM INTERFACE                //
    /*************************************************/

    wire user_clk;
    reg [31:0] wr_data1, wr_data0;
    wire [31:0] rd_data1, rd_data0;
    wire rd_data_valid1, rd_data_valid0;
    reg [20:0] addr1, addr0;
    reg cmd1, cmd0;
    reg cmd_en1, cmd_en0;
    reg [3:0] data_mask1, data_mask0;

    reg wen_buffer,ren_buffer;
    reg [3:0] byte_select_vector_buffer;

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
 	 	.init_calib0(calib1), //output init_calib0
 	 	.cmd0(cmd1), //input cmd0
 	 	.cmd_en0(cmd_en1), //input cmd_en0
 	 	.addr0(addr1), //input [20:0] addr0
        .wr_data0(wr_data1), //input [31:0] wr_data1
        .rd_data0(rd_data1), //output [31:0] rd_data0
        .rd_data_valid0(rd_data_valid1), //output rd_data_valid0
        .data_mask0(data_mask1), //input [3:0] data_mask0
		

          //**** PSRAM CHANNEL 1 : DATA WRITE AND READ ****//
        .init_calib1(calib0), //output init_calib1
        .cmd1(cmd0), //input cmd1
        .cmd_en1(cmd_en0), //input cmd_en1
        .addr1(addr0), //input [20:0] addr1
 	 	.wr_data1(wr_data0), //input [31:0] wr_data0
 	 	.rd_data1(rd_data0), //output [31:0] rd_data1
 	 	.rd_data_valid1(rd_data_valid0), //output rd_data_valid1
 	 	.data_mask1(data_mask0) //input [3:0] data_mask1
 	);

    /*************************************************/
    //               CPU STALL CONTROLLER            //
    /*************************************************/

    localparam IDLE_STALL = 2'b00;
    localparam WD_STALL = 2'b01;

    reg state_stall;

    reg [3:0] ctr;
    
    reg test=0;

    always @(posedge clk or negedge reset) begin
        if (!reset) begin
            state_stall <= IDLE_STALL;
            ctr <= 0;
            cpu_stall <= 1;
        end else begin
            case (state_stall)
                IDLE_STALL: begin
                    if(wen || ren)begin
                        ctr <= 0;
                        state_stall <= WD_STALL;
                        cpu_stall <= 0; // Ensure that cpu_stall is cleared when transitioning to WD_STALL
                        wr_data1 <= data_in;
                        addr1 <= address;
                        byte_select_vector_buffer <= ~byte_select_vector;
                        wen_buffer <= wen;
                        test<=1;
                        ren_buffer <= ren;

                    end
                    else begin
                        state_stall <= IDLE_STALL;
                        cpu_stall <= 1;
                    end
                end

                WD_STALL: begin
                    ctr <= ctr + 1;
                    test<=0;  
                    if (ctr == 6) begin
                        cpu_stall <= 1;  // Set cpu_stall when we reach the stall limit
                        state_stall <= IDLE_STALL;
                    end else begin
                        cpu_stall <= 0;  // CPU is not stalled while in WD_STALL
                        state_stall <= WD_STALL;
                    end
                end
            endcase
        end
    end

    /*************************************************/
    //               INSTRUCTION CONTROLLER          //
    /*************************************************/

    localparam IDLE = 2'b00;
    localparam READ = 2'b01;
    localparam WRITE = 2'b10;

    // reg [1:0] state_instr;

    // reg [7:0] rd_cycle_instr;
    // reg [7:0] wr_cycle_instr;
    // reg [31:0] instr_rd;
    
    // always @(posedge user_clk or negedge reset)begin
    //     if(!reset)begin
    //         state_instr <= IDLE;
    //         wr_cycle_instr <= 8'b0;
    //         rd_cycle_instr <= 8'b0;
    //         instr_rd <= 32'b0;
    //         cmd_en0 <= 0;
    //     end
    //     else begin
    //         case (state_instr)
    //             IDLE:
    //                 if(cpu_stall)begin
    //                     addr0 <= PC<<2;
    //                     state_instr <= READ;
    //                 end
    //                 else begin
    //                     state_instr <= IDLE;
    //                 end
    //             READ: begin
    //                 rd_cycle_instr <= rd_cycle_instr + 8'b1;
                
    //                 if (rd_cycle_instr == 0) begin
    //                     cmd0 <= 1'b0;
    //                     cmd_en0 <= 1'b1;
    //                     data_mask0 <= 4'h0;
    //                 end else begin
    //                     cmd_en0 <= 1'b0;
    //                     if (rd_data_valid0) begin
    //                         instr_rd <= rd_data0;
    //                         state_instr <= IDLE;
    //                     end
    //                 end
    //             end
    //         endcase
    //     end
    // end

    // assign instr = instr_rd;

    /*************************************************/
    //                   DATA CONTROLLER             //
    /*************************************************/
  
    reg [1:0] state;

    reg [7:0] rd_cycle;
    reg [7:0] wr_cycle;
    reg [31:0] data_rd;
    
    always @(posedge user_clk or negedge reset)begin
        if(!reset)begin
            state <= IDLE;
            wr_cycle <= 8'b0;
            rd_cycle <= 8'b0;
            data_rd <= 32'd0;
            cmd_en1 <= 0;
        end
        else begin
            case (state)
                //*****IDLE STATE*****//
                IDLE: begin
                    if(wen_buffer && !ren_buffer && test)begin
//                        addr1 <= address;
                        wr_cycle <= 8'b0;
                        state <= WRITE;
                    end
                    else if(ren_buffer && !wen_buffer && test)begin
//                        addr1 <= address;
                        rd_cycle <= 8'b0;
                        state <= READ;
                    end
                    else begin
                       state <= IDLE;
                    end
                    
                end
                //*****READ STATE*****//
                READ: begin
                
                rd_cycle <= rd_cycle + 8'b1;
                
                if (rd_cycle == 0) begin
                    cmd1 <= 1'b0;
                    cmd_en1 <= 1'b1;
                    data_mask1 <= byte_select_vector_buffer;
                end else begin
                    cmd_en1 <= 1'b0;
                    if (rd_data_valid1) begin
                        data_rd <= rd_data1;
                        state <= IDLE;
                    end
                end
                end
                //*****WRITE STATE : 14*****//
                WRITE: begin
                    wr_cycle <= wr_cycle + 8'b1;

                    if(wr_cycle == 14)begin
                       state <= IDLE;
                    end 
                    
                    if (wr_cycle == 0) begin
//                        wr_data1 <= data_in;
                        data_mask1 <= byte_select_vector_buffer;
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