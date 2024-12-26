//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.10.02
//Part Number: GW1NR-LV9QN88PC6/I5
//Device: GW1NR-9
//Device Version: C
//Created Time: Tue Dec 10 19:24:39 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

	PSRAM_Memory_Interface_HS_2CH_Top your_instance_name(
		.clk(clk), //input clk
		.rst_n(rst_n), //input rst_n
		.memory_clk(memory_clk), //input memory_clk
		.pll_lock(pll_lock), //input pll_lock
		.O_psram_ck(O_psram_ck), //output [1:0] O_psram_ck
		.O_psram_ck_n(O_psram_ck_n), //output [1:0] O_psram_ck_n
		.IO_psram_rwds(IO_psram_rwds), //inout [1:0] IO_psram_rwds
		.O_psram_reset_n(O_psram_reset_n), //output [1:0] O_psram_reset_n
		.IO_psram_dq(IO_psram_dq), //inout [15:0] IO_psram_dq
		.O_psram_cs_n(O_psram_cs_n), //output [1:0] O_psram_cs_n
		.init_calib0(init_calib0), //output init_calib0
		.init_calib1(init_calib1), //output init_calib1
		.clk_out(clk_out), //output clk_out
		.cmd0(cmd0), //input cmd0
		.cmd1(cmd1), //input cmd1
		.cmd_en0(cmd_en0), //input cmd_en0
		.cmd_en1(cmd_en1), //input cmd_en1
		.addr0(addr0), //input [20:0] addr0
		.addr1(addr1), //input [20:0] addr1
		.wr_data0(wr_data0), //input [31:0] wr_data0
		.wr_data1(wr_data1), //input [31:0] wr_data1
		.rd_data0(rd_data0), //output [31:0] rd_data0
		.rd_data1(rd_data1), //output [31:0] rd_data1
		.rd_data_valid0(rd_data_valid0), //output rd_data_valid0
		.rd_data_valid1(rd_data_valid1), //output rd_data_valid1
		.data_mask0(data_mask0), //input [3:0] data_mask0
		.data_mask1(data_mask1) //input [3:0] data_mask1
	);

//--------Copy end-------------------
