//Copyright (C)2014-2025 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Post-PnR Verilog Simulation Model file
//Tool Version: V1.9.11.03
//Created Time: Sat Aug  9 11:35:24 2025

`timescale 100 ps/100 ps
module SPI_Flash_Interface_Lite_Top(
	I_hclk,
	I_hresetn,
	I_haddr_reg,
	I_hreadyin_reg,
	I_hsel_reg,
	I_htrans_reg,
	I_hwdata_reg,
	I_hwrite_reg,
	O_hrdata_reg,
	O_hreadyout_reg,
	O_hresp_reg,
	O_flash_ck,
	O_flash_cs_n,
	IO_flash_hold_n,
	IO_flash_wp_n,
	IO_flash_do,
	IO_flash_di
);
input I_hclk;
input I_hresetn;
input [31:0] I_haddr_reg;
input I_hreadyin_reg;
input I_hsel_reg;
input [1:0] I_htrans_reg;
input [31:0] I_hwdata_reg;
input I_hwrite_reg;
output [31:0] O_hrdata_reg;
output O_hreadyout_reg;
output [1:0] O_hresp_reg;
output O_flash_ck;
output O_flash_cs_n;
inout IO_flash_hold_n;
inout IO_flash_wp_n;
inout IO_flash_do;
inout IO_flash_di;
wire GND;
wire IO_flash_di;
wire IO_flash_di_d;
wire IO_flash_do;
wire IO_flash_do_8;
wire IO_flash_do_in;
wire IO_flash_hold_n;
wire IO_flash_wp_n;
wire [31:0] I_haddr_reg;
wire I_hclk;
wire I_hreadyin_reg;
wire I_hresetn;
wire I_hsel_reg;
wire [1:0] I_htrans_reg;
wire [31:0] I_hwdata_reg;
wire I_hwrite_reg;
wire O_flash_ck;
wire O_flash_cs_n;
wire [31:0] O_hrdata_reg;
wire O_hreadyout_reg;
wire [1:0] O_hresp_reg;
wire VCC;
wire spi_miso_oe;
wire \spiflash_inst/reg_wr_a_r ;
wire \spiflash_inst/hwrite_r ;
wire \spiflash_inst/hready_r ;
wire \spiflash_inst/reg_rd_a_Z ;
wire \spiflash_inst/reg_rd_a_Z_5 ;
wire \spiflash_inst/n39_6 ;
wire \spiflash_inst/reg_req_regclk ;
wire \spiflash_inst/reg_txf_wr_regclk ;
wire \spiflash_inst/reg_reg_tra_ctrl_wr_4 ;
wire \spiflash_inst/n299_10 ;
wire \spiflash_inst/reg_reg_tra_ctrl_wr_5 ;
wire \spiflash_inst/n351_17 ;
wire \spiflash_inst/reg_rxf_empty ;
wire \spiflash_inst/txf_empty_Z ;
wire \spiflash_inst/arb_trans_end_sysclk_Z ;
wire \spiflash_inst/arb_req_sysclk_Z ;
wire \spiflash_inst/arb_busy_sclk_Z ;
wire \spiflash_inst/rxf_wr ;
wire \spiflash_inst/spi_txdata_Z ;
wire \spiflash_inst/n524_5 ;
wire \spiflash_inst/ctrl_ns_2_31 ;
wire \spiflash_inst/arb_trans_end_sclk_Z ;
wire \spiflash_inst/tx_ready ;
wire \spiflash_inst/spi_rxdata ;
wire \spiflash_inst/master_rxdata_wr_lvl_r ;
wire \spiflash_inst/spi_txdata_rd_Z ;
wire \spiflash_inst/spi_txdata_rd_Z_3 ;
wire \spiflash_inst/spi_txdata_rd_Z_4 ;
wire \spiflash_inst/spi_ns_2_19 ;
wire [6:2] \spiflash_inst/reg_waddr ;
wire [4:2] \spiflash_inst/reg_raddr_Z ;
wire [30:0] \spiflash_inst/reg_trans_ctrl ;
wire [7:0] \spiflash_inst/reg_opcode ;
wire [31:0] \spiflash_inst/reg_spi_addr ;
wire [31:0] \spiflash_inst/txf_rd_data_Z ;
wire [31:0] \spiflash_inst/rxf_rd_data_Z ;
wire [3:0] \spiflash_inst/ctrl_cs_r ;
wire [31:0] \spiflash_inst/rxf_wr_data ;
wire [2:0] \spiflash_inst/spi_cs_r ;
wire \spiflash_inst/u_spi_regif/n41_4 ;
wire \spiflash_inst/u_spi_regif/wr_rd_same ;
wire \spiflash_inst/u_spi_regif/n15_6 ;
wire \spiflash_inst/u_spi_regif/hstate_r_nx ;
wire \spiflash_inst/u_spi_regif/n41_5 ;
wire \spiflash_inst/u_spi_regif/n41_6 ;
wire \spiflash_inst/u_spi_regif/reg_rd_a_Z_3 ;
wire \spiflash_inst/u_spi_regif/reg_rd_a_Z_4 ;
wire \spiflash_inst/u_spi_regif/n15_7 ;
wire \spiflash_inst/u_spi_regif/n15_9 ;
wire \spiflash_inst/u_spi_regif/n15_10 ;
wire \spiflash_inst/u_spi_regif/n41_7 ;
wire \spiflash_inst/u_spi_regif/reg_rd_a_Z_6 ;
wire \spiflash_inst/u_spi_regif/n15_11 ;
wire \spiflash_inst/u_spi_regif/n15_12 ;
wire \spiflash_inst/u_spi_regif/n15_14 ;
wire \spiflash_inst/u_spi_regif/reg_wr_a_pre ;
wire \spiflash_inst/u_spi_regif/hstate_r ;
wire \spiflash_inst/u_spi_regif/wr_rd_same_d1 ;
wire \spiflash_inst/u_spi_regif/n174_1_SUM ;
wire \spiflash_inst/u_spi_regif/n174_3 ;
wire \spiflash_inst/u_spi_regif/n175_1_SUM ;
wire \spiflash_inst/u_spi_regif/n175_3 ;
wire \spiflash_inst/u_spi_regif/n176_1_SUM ;
wire \spiflash_inst/u_spi_regif/n176_3 ;
wire \spiflash_inst/u_spi_regif/n177_1_SUM ;
wire \spiflash_inst/u_spi_regif/n177_3 ;
wire \spiflash_inst/u_spi_regif/n178_1_SUM ;
wire \spiflash_inst/u_spi_regif/n178_3 ;
wire [6:5] \spiflash_inst/u_spi_regif/reg_raddr_Z_0 ;
wire \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ;
wire \spiflash_inst/u_spi_reg/reg_reg_cmd_wr ;
wire \spiflash_inst/u_spi_reg/reg_reg_addr_wr ;
wire \spiflash_inst/u_spi_reg/n299_9 ;
wire \spiflash_inst/u_spi_reg/n301_9 ;
wire \spiflash_inst/u_spi_reg/n305_9 ;
wire \spiflash_inst/u_spi_reg/n307_9 ;
wire \spiflash_inst/u_spi_reg/n309_9 ;
wire \spiflash_inst/u_spi_reg/n311_9 ;
wire \spiflash_inst/u_spi_reg/n317_9 ;
wire \spiflash_inst/u_spi_reg/n319_9 ;
wire \spiflash_inst/u_spi_reg/n321_9 ;
wire \spiflash_inst/u_spi_reg/n323_9 ;
wire \spiflash_inst/u_spi_reg/n325_9 ;
wire \spiflash_inst/u_spi_reg/n327_9 ;
wire \spiflash_inst/u_spi_reg/n329_9 ;
wire \spiflash_inst/u_spi_reg/n331_9 ;
wire \spiflash_inst/u_spi_reg/n333_9 ;
wire \spiflash_inst/u_spi_reg/n335_9 ;
wire \spiflash_inst/u_spi_reg/n337_9 ;
wire \spiflash_inst/u_spi_reg/n339_9 ;
wire \spiflash_inst/u_spi_reg/n341_9 ;
wire \spiflash_inst/u_spi_reg/n343_9 ;
wire \spiflash_inst/u_spi_reg/n345_10 ;
wire \spiflash_inst/u_spi_reg/n347_10 ;
wire \spiflash_inst/u_spi_reg/n351_11 ;
wire \spiflash_inst/u_spi_reg/n349_12 ;
wire \spiflash_inst/u_spi_reg/n353_12 ;
wire \spiflash_inst/u_spi_reg/n355_12 ;
wire \spiflash_inst/u_spi_reg/n357_12 ;
wire \spiflash_inst/u_spi_reg/n358_13 ;
wire \spiflash_inst/u_spi_reg/n297_10 ;
wire \spiflash_inst/u_spi_reg/n303_12 ;
wire \spiflash_inst/u_spi_reg/n313_12 ;
wire \spiflash_inst/u_spi_reg/n315_12 ;
wire \spiflash_inst/u_spi_reg/n268_7 ;
wire \spiflash_inst/u_spi_reg/n299_11 ;
wire \spiflash_inst/u_spi_reg/n301_10 ;
wire \spiflash_inst/u_spi_reg/n305_10 ;
wire \spiflash_inst/u_spi_reg/n307_10 ;
wire \spiflash_inst/u_spi_reg/n309_10 ;
wire \spiflash_inst/u_spi_reg/n311_10 ;
wire \spiflash_inst/u_spi_reg/n317_10 ;
wire \spiflash_inst/u_spi_reg/n319_10 ;
wire \spiflash_inst/u_spi_reg/n321_10 ;
wire \spiflash_inst/u_spi_reg/n323_10 ;
wire \spiflash_inst/u_spi_reg/n325_10 ;
wire \spiflash_inst/u_spi_reg/n327_10 ;
wire \spiflash_inst/u_spi_reg/n329_10 ;
wire \spiflash_inst/u_spi_reg/n331_10 ;
wire \spiflash_inst/u_spi_reg/n333_10 ;
wire \spiflash_inst/u_spi_reg/n335_10 ;
wire \spiflash_inst/u_spi_reg/n337_10 ;
wire \spiflash_inst/u_spi_reg/n339_10 ;
wire \spiflash_inst/u_spi_reg/n341_10 ;
wire \spiflash_inst/u_spi_reg/n343_10 ;
wire \spiflash_inst/u_spi_reg/n345_11 ;
wire \spiflash_inst/u_spi_reg/n345_12 ;
wire \spiflash_inst/u_spi_reg/n345_13 ;
wire \spiflash_inst/u_spi_reg/n347_11 ;
wire \spiflash_inst/u_spi_reg/n347_12 ;
wire \spiflash_inst/u_spi_reg/n351_12 ;
wire \spiflash_inst/u_spi_reg/n351_13 ;
wire \spiflash_inst/u_spi_reg/n351_14 ;
wire \spiflash_inst/u_spi_reg/n349_13 ;
wire \spiflash_inst/u_spi_reg/n349_14 ;
wire \spiflash_inst/u_spi_reg/n353_13 ;
wire \spiflash_inst/u_spi_reg/n353_14 ;
wire \spiflash_inst/u_spi_reg/n355_13 ;
wire \spiflash_inst/u_spi_reg/n355_14 ;
wire \spiflash_inst/u_spi_reg/n357_13 ;
wire \spiflash_inst/u_spi_reg/n357_14 ;
wire \spiflash_inst/u_spi_reg/n358_14 ;
wire \spiflash_inst/u_spi_reg/n358_15 ;
wire \spiflash_inst/u_spi_reg/n268_8 ;
wire \spiflash_inst/u_spi_reg/n345_14 ;
wire \spiflash_inst/u_spi_reg/n358_16 ;
wire \spiflash_inst/u_spi_reg/n268_9 ;
wire \spiflash_inst/u_spi_reg/spi_trans_end_int_r_10 ;
wire \spiflash_inst/u_spi_reg/reg_req_r_8 ;
wire \spiflash_inst/u_spi_reg/n299_16 ;
wire \spiflash_inst/u_spi_reg/n297_13 ;
wire \spiflash_inst/u_spi_reg/n299_18 ;
wire \spiflash_inst/u_spi_reg/spi_trans_end_int_r ;
wire \spiflash_inst/u_spi_reg/n150_8 ;
wire [21:2] \spiflash_inst/u_spi_reg/reg_trans_ctrl_2 ;
wire \spiflash_inst/u_spi_fifo/rx_dflag_8 ;
wire \spiflash_inst/u_spi_fifo/n181_6 ;
wire \spiflash_inst/u_spi_fifo/n180_6 ;
wire \spiflash_inst/u_spi_fifo/n87_6 ;
wire \spiflash_inst/u_spi_fifo/n86_6 ;
wire \spiflash_inst/u_spi_fifo/rx_dflag_9 ;
wire \spiflash_inst/u_spi_fifo/tx_dflag_10 ;
wire \spiflash_inst/u_spi_fifo/n188_12 ;
wire \spiflash_inst/u_spi_fifo/n94_9 ;
wire \spiflash_inst/u_spi_fifo/tx_dflag ;
wire \spiflash_inst/u_spi_fifo/rx_dflag ;
wire [1:0] \spiflash_inst/u_spi_fifo/tx_dcnt ;
wire [1:0] \spiflash_inst/u_spi_fifo/rx_dcnt ;
wire \spiflash_inst/u_spi_sync/n28_6 ;
wire \spiflash_inst/u_spi_sync/arb_ns ;
wire \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d2 ;
wire \spiflash_inst/u_spi_sync/arb_cs_r ;
wire \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d1 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_64 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_65 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_66 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_67 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_68 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_69 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_70 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_71 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_72 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_73 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_74 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_75 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_76 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_77 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_78 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_79 ;
wire \spiflash_inst/u_spi_ctrl/n206_3 ;
wire \spiflash_inst/u_spi_ctrl/n325_3 ;
wire \spiflash_inst/u_spi_ctrl/n326_4 ;
wire \spiflash_inst/u_spi_ctrl/n524_3 ;
wire \spiflash_inst/u_spi_ctrl/n525_3 ;
wire \spiflash_inst/u_spi_ctrl/n526_3 ;
wire \spiflash_inst/u_spi_ctrl/n527_3 ;
wire \spiflash_inst/u_spi_ctrl/n528_3 ;
wire \spiflash_inst/u_spi_ctrl/n529_3 ;
wire \spiflash_inst/u_spi_ctrl/n530_3 ;
wire \spiflash_inst/u_spi_ctrl/n531_3 ;
wire \spiflash_inst/u_spi_ctrl/n532_3 ;
wire \spiflash_inst/u_spi_ctrl/n533_3 ;
wire \spiflash_inst/u_spi_ctrl/n534_3 ;
wire \spiflash_inst/u_spi_ctrl/n535_3 ;
wire \spiflash_inst/u_spi_ctrl/n536_3 ;
wire \spiflash_inst/u_spi_ctrl/n537_3 ;
wire \spiflash_inst/u_spi_ctrl/n538_3 ;
wire \spiflash_inst/u_spi_ctrl/n539_3 ;
wire \spiflash_inst/u_spi_ctrl/n540_3 ;
wire \spiflash_inst/u_spi_ctrl/n541_3 ;
wire \spiflash_inst/u_spi_ctrl/n542_3 ;
wire \spiflash_inst/u_spi_ctrl/n543_3 ;
wire \spiflash_inst/u_spi_ctrl/n544_3 ;
wire \spiflash_inst/u_spi_ctrl/n545_3 ;
wire \spiflash_inst/u_spi_ctrl/n546_3 ;
wire \spiflash_inst/u_spi_ctrl/n547_3 ;
wire \spiflash_inst/u_spi_ctrl/n548_3 ;
wire \spiflash_inst/u_spi_ctrl/n549_3 ;
wire \spiflash_inst/u_spi_ctrl/n550_3 ;
wire \spiflash_inst/u_spi_ctrl/n551_3 ;
wire \spiflash_inst/u_spi_ctrl/n552_3 ;
wire \spiflash_inst/u_spi_ctrl/n553_3 ;
wire \spiflash_inst/u_spi_ctrl/n554_3 ;
wire \spiflash_inst/u_spi_ctrl/n555_3 ;
wire \spiflash_inst/u_spi_ctrl/n845_3 ;
wire \spiflash_inst/u_spi_ctrl/data_cnt_r_3_8 ;
wire \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_8 ;
wire \spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_6 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_6 ;
wire \spiflash_inst/u_spi_ctrl/arb_req_invalid_8 ;
wire \spiflash_inst/u_spi_ctrl/n674_6 ;
wire \spiflash_inst/u_spi_ctrl/n673_6 ;
wire \spiflash_inst/u_spi_ctrl/n672_6 ;
wire \spiflash_inst/u_spi_ctrl/n671_6 ;
wire \spiflash_inst/u_spi_ctrl/n670_6 ;
wire \spiflash_inst/u_spi_ctrl/n669_6 ;
wire \spiflash_inst/u_spi_ctrl/n668_6 ;
wire \spiflash_inst/u_spi_ctrl/n667_6 ;
wire \spiflash_inst/u_spi_ctrl/n666_6 ;
wire \spiflash_inst/u_spi_ctrl/n665_6 ;
wire \spiflash_inst/u_spi_ctrl/n664_6 ;
wire \spiflash_inst/u_spi_ctrl/n663_6 ;
wire \spiflash_inst/u_spi_ctrl/n662_6 ;
wire \spiflash_inst/u_spi_ctrl/n661_6 ;
wire \spiflash_inst/u_spi_ctrl/n660_6 ;
wire \spiflash_inst/u_spi_ctrl/n659_6 ;
wire \spiflash_inst/u_spi_ctrl/n658_6 ;
wire \spiflash_inst/u_spi_ctrl/n657_6 ;
wire \spiflash_inst/u_spi_ctrl/n656_6 ;
wire \spiflash_inst/u_spi_ctrl/n655_6 ;
wire \spiflash_inst/u_spi_ctrl/n654_6 ;
wire \spiflash_inst/u_spi_ctrl/n653_6 ;
wire \spiflash_inst/u_spi_ctrl/n652_6 ;
wire \spiflash_inst/u_spi_ctrl/n651_6 ;
wire \spiflash_inst/u_spi_ctrl/n650_6 ;
wire \spiflash_inst/u_spi_ctrl/n649_6 ;
wire \spiflash_inst/u_spi_ctrl/n648_6 ;
wire \spiflash_inst/u_spi_ctrl/n647_6 ;
wire \spiflash_inst/u_spi_ctrl/n646_6 ;
wire \spiflash_inst/u_spi_ctrl/n645_6 ;
wire \spiflash_inst/u_spi_ctrl/n644_6 ;
wire \spiflash_inst/u_spi_ctrl/n643_6 ;
wire \spiflash_inst/u_spi_ctrl/n360_7 ;
wire \spiflash_inst/u_spi_ctrl/n359_7 ;
wire \spiflash_inst/u_spi_ctrl/n358_7 ;
wire \spiflash_inst/u_spi_ctrl/n357_7 ;
wire \spiflash_inst/u_spi_ctrl/n270_7 ;
wire \spiflash_inst/u_spi_ctrl/n269_7 ;
wire \spiflash_inst/u_spi_ctrl/n268_7 ;
wire \spiflash_inst/u_spi_ctrl/n267_7 ;
wire \spiflash_inst/u_spi_ctrl/n238_7 ;
wire \spiflash_inst/u_spi_ctrl/n237_7 ;
wire \spiflash_inst/u_spi_ctrl/n295_7 ;
wire \spiflash_inst/u_spi_ctrl/n294_7 ;
wire \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ;
wire \spiflash_inst/u_spi_ctrl/n325_4 ;
wire \spiflash_inst/u_spi_ctrl/n325_5 ;
wire \spiflash_inst/u_spi_ctrl/n325_6 ;
wire \spiflash_inst/u_spi_ctrl/n524_4 ;
wire \spiflash_inst/u_spi_ctrl/n548_4 ;
wire \spiflash_inst/u_spi_ctrl/n548_5 ;
wire \spiflash_inst/u_spi_ctrl/n549_4 ;
wire \spiflash_inst/u_spi_ctrl/n550_4 ;
wire \spiflash_inst/u_spi_ctrl/n551_4 ;
wire \spiflash_inst/u_spi_ctrl/n552_4 ;
wire \spiflash_inst/u_spi_ctrl/n553_4 ;
wire \spiflash_inst/u_spi_ctrl/n554_4 ;
wire \spiflash_inst/u_spi_ctrl/n555_4 ;
wire \spiflash_inst/u_spi_ctrl/n845_4 ;
wire \spiflash_inst/u_spi_ctrl/n845_6 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_30 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_31 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_32 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_27 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_28 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_29 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_27 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_28 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_29 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_30 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_28 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_29 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_30 ;
wire \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_9 ;
wire \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ;
wire \spiflash_inst/u_spi_ctrl/n358_8 ;
wire \spiflash_inst/u_spi_ctrl/n357_8 ;
wire \spiflash_inst/u_spi_ctrl/n268_8 ;
wire \spiflash_inst/u_spi_ctrl/n267_8 ;
wire \spiflash_inst/u_spi_ctrl/n238_8 ;
wire \spiflash_inst/u_spi_ctrl/n237_8 ;
wire \spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ;
wire \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_5 ;
wire \spiflash_inst/u_spi_ctrl/n325_7 ;
wire \spiflash_inst/u_spi_ctrl/n524_6 ;
wire \spiflash_inst/u_spi_ctrl/n524_7 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_33 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_34 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_36 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_37 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_38 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_39 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_30 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_33 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_34 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_35 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_37 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_31 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_32 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_33 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_34 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_35 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_36 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_31 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_33 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_34 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_35 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_36 ;
wire \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_10 ;
wire \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_11 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_10 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_8 ;
wire \spiflash_inst/u_spi_ctrl/n325_8 ;
wire \spiflash_inst/u_spi_ctrl/n524_8 ;
wire \spiflash_inst/u_spi_ctrl/n524_9 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_41 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_42 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_39 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_41 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_39 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_40 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_41 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_42 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_43 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_38 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_39 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_40 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_41 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_44 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_45 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_45 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_42 ;
wire \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_7 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_44 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_47 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_47 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_49 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_51 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_53 ;
wire \spiflash_inst/u_spi_ctrl/tx_ready_11 ;
wire \spiflash_inst/u_spi_ctrl/data_cnt_r_3_11 ;
wire \spiflash_inst/u_spi_ctrl/n845_8 ;
wire \spiflash_inst/u_spi_ctrl/n326_7 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_0_46 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_49 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_3_44 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_10 ;
wire \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_12 ;
wire \spiflash_inst/u_spi_ctrl/tx_ptr_3_18 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_1_51 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_55 ;
wire \spiflash_inst/u_spi_ctrl/ctrl_ns_2_57 ;
wire \spiflash_inst/u_spi_ctrl/n271_10 ;
wire \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 ;
wire \spiflash_inst/u_spi_ctrl/n361_10 ;
wire \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 ;
wire \spiflash_inst/u_spi_ctrl/n444_12 ;
wire \spiflash_inst/u_spi_ctrl/arb_req_invalid ;
wire \spiflash_inst/u_spi_ctrl/n10_1_SUM ;
wire \spiflash_inst/u_spi_ctrl/n10_3 ;
wire \spiflash_inst/u_spi_ctrl/n11_1_SUM ;
wire \spiflash_inst/u_spi_ctrl/n11_3 ;
wire \spiflash_inst/u_spi_ctrl/n12_1_SUM ;
wire \spiflash_inst/u_spi_ctrl/n12_3 ;
wire \spiflash_inst/u_spi_ctrl/n13_1_SUM ;
wire \spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_81 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_83 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_85 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_87 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_89 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_91 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_93 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_95 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_97 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_99 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_101 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_103 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_105 ;
wire \spiflash_inst/u_spi_ctrl/spi_txdata_107 ;
wire [3:0] \spiflash_inst/u_spi_ctrl/ctrl_ns ;
wire [4:4] \spiflash_inst/u_spi_ctrl/tx_ptr ;
wire [1:0] \spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r ;
wire [1:0] \spiflash_inst/u_spi_ctrl/data_cnt_r ;
wire [4:0] \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r ;
wire [1:0] \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r ;
wire [4:0] \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r ;
wire [31:0] \spiflash_inst/u_spi_ctrl/tx_mux_r ;
wire \spiflash_inst/u_spi_spiif/n118_3 ;
wire \spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_8 ;
wire \spiflash_inst/u_spi_spiif/n127_7 ;
wire \spiflash_inst/u_spi_spiif/n70_7 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_2_20 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_1_18 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_1_19 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_0_16 ;
wire \spiflash_inst/u_spi_spiif/clock_cnt_r_3_9 ;
wire \spiflash_inst/u_spi_spiif/n69_8 ;
wire \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_5 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_2_21 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_2_22 ;
wire \spiflash_inst/u_spi_spiif/spi_ns_1_20 ;
wire \spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ;
wire \spiflash_inst/u_spi_spiif/n69_10 ;
wire \spiflash_inst/u_spi_spiif/n71_9 ;
wire \spiflash_inst/u_spi_spiif/master_clk_en ;
wire \spiflash_inst/u_spi_spiif/n72_12 ;
wire \spiflash_inst/u_spi_spiif/clock_cnt_r_3_14 ;
wire \spiflash_inst/u_spi_spiif/master_clk_d_en_r ;
wire \spiflash_inst/u_spi_spiif/spi_in_r ;
wire \spiflash_inst/u_spi_spiif/spi_clock_inv_6 ;
wire [2:0] \spiflash_inst/u_spi_spiif/spi_ns ;
wire [3:0] \spiflash_inst/u_spi_spiif/clock_cnt_r ;
wire \spiflash_inst/u_spi_spiif/master_gclk_1/latch_out ;
VCC VCC_cZ (
  .V(VCC)
);
GND GND_cZ (
  .G(GND)
);
GSR GSR (
	.GSRI(VCC)
);
OBUF IO_flash_hold_n_obuf (
	.I(VCC),
	.O(IO_flash_hold_n)
);
OBUF IO_flash_wp_n_obuf (
	.I(VCC),
	.O(IO_flash_wp_n)
);
IOBUF IO_flash_do_iobuf (
	.I(VCC),
	.OEN(IO_flash_do_8),
	.IO(IO_flash_do),
	.O(IO_flash_do_in)
);
OBUF IO_flash_di_obuf (
	.I(IO_flash_di_d),
	.O(IO_flash_di)
);
OBUF gowin_buf_0 (
	.I(GND),
	.O(O_hresp_reg[0])
);
OBUF gowin_buf_1 (
	.I(GND),
	.O(O_hresp_reg[1])
);
INV IO_flash_do_s5 (
	.I(spi_miso_oe),
	.O(IO_flash_do_8)
);
LUT4 \spiflash_inst/u_spi_regif/n41_s0  (
	.I0(\spiflash_inst/u_spi_regif/n41_5 ),
	.I1(\spiflash_inst/reg_rd_a_Z ),
	.I2(\spiflash_inst/reg_wr_a_r ),
	.I3(\spiflash_inst/u_spi_regif/n41_6 ),
	.F(\spiflash_inst/u_spi_regif/n41_4 )
);
defparam \spiflash_inst/u_spi_regif/n41_s0 .INIT=16'hFF40;
LUT4 \spiflash_inst/u_spi_regif/reg_rd_a_Z_s  (
	.I0(\spiflash_inst/u_spi_regif/reg_rd_a_Z_3 ),
	.I1(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I2(\spiflash_inst/u_spi_regif/reg_rd_a_Z_4 ),
	.I3(\spiflash_inst/reg_rxf_empty ),
	.F(\spiflash_inst/reg_rd_a_Z )
);
defparam \spiflash_inst/u_spi_regif/reg_rd_a_Z_s .INIT=16'hCDFC;
LUT3 \spiflash_inst/u_spi_regif/wr_rd_same_s0  (
	.I0(\spiflash_inst/u_spi_regif/n41_5 ),
	.I1(\spiflash_inst/reg_rd_a_Z ),
	.I2(\spiflash_inst/reg_wr_a_r ),
	.F(\spiflash_inst/u_spi_regif/wr_rd_same )
);
defparam \spiflash_inst/u_spi_regif/wr_rd_same_s0 .INIT=8'h40;
LUT2 \spiflash_inst/u_spi_regif/O_hreadyout_reg_d_s  (
	.I0(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I1(\spiflash_inst/hready_r ),
	.F(O_hreadyout_reg)
);
defparam \spiflash_inst/u_spi_regif/O_hreadyout_reg_d_s .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_regif/n15_s1  (
	.I0(\spiflash_inst/u_spi_regif/n15_7 ),
	.I1(\spiflash_inst/u_spi_regif/n15_14 ),
	.I2(\spiflash_inst/u_spi_regif/n15_9 ),
	.I3(\spiflash_inst/u_spi_regif/n15_10 ),
	.F(\spiflash_inst/u_spi_regif/n15_6 )
);
defparam \spiflash_inst/u_spi_regif/n15_s1 .INIT=16'hF1FF;
LUT4 \spiflash_inst/u_spi_regif/hstate_r_nx_s1  (
	.I0(\spiflash_inst/u_spi_regif/reg_rd_a_Z_3 ),
	.I1(\spiflash_inst/hready_r ),
	.I2(\spiflash_inst/u_spi_regif/hstate_r ),
	.I3(\spiflash_inst/u_spi_regif/n41_6 ),
	.F(\spiflash_inst/u_spi_regif/hstate_r_nx )
);
defparam \spiflash_inst/u_spi_regif/hstate_r_nx_s1 .INIT=16'hFA30;
LUT4 \spiflash_inst/u_spi_regif/n41_s1  (
	.I0(\spiflash_inst/u_spi_regif/n178_3 ),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_regif/n41_7 ),
	.I3(I_haddr_reg[4]),
	.F(\spiflash_inst/u_spi_regif/n41_5 )
);
defparam \spiflash_inst/u_spi_regif/n41_s1 .INIT=16'h0EEE;
LUT3 \spiflash_inst/u_spi_regif/n41_s2  (
	.I0(I_hsel_reg),
	.I1(I_hreadyin_reg),
	.I2(I_htrans_reg[1]),
	.F(\spiflash_inst/u_spi_regif/n41_6 )
);
defparam \spiflash_inst/u_spi_regif/n41_s2 .INIT=8'h80;
LUT4 \spiflash_inst/u_spi_regif/reg_rd_a_Z_s0  (
	.I0(I_haddr_reg[4]),
	.I1(I_haddr_reg[2]),
	.I2(I_haddr_reg[3]),
	.I3(\spiflash_inst/reg_rd_a_Z_5 ),
	.F(\spiflash_inst/u_spi_regif/reg_rd_a_Z_3 )
);
defparam \spiflash_inst/u_spi_regif/reg_rd_a_Z_s0 .INIT=16'h4000;
LUT4 \spiflash_inst/u_spi_regif/reg_rd_a_Z_s1  (
	.I0(I_hwrite_reg),
	.I1(\spiflash_inst/u_spi_regif/n41_6 ),
	.I2(\spiflash_inst/u_spi_regif/reg_rd_a_Z_6 ),
	.I3(\spiflash_inst/reg_rxf_empty ),
	.F(\spiflash_inst/u_spi_regif/reg_rd_a_Z_4 )
);
defparam \spiflash_inst/u_spi_regif/reg_rd_a_Z_s1 .INIT=16'hBBF4;
LUT3 \spiflash_inst/u_spi_regif/n15_s2  (
	.I0(\spiflash_inst/hwrite_r ),
	.I1(\spiflash_inst/u_spi_regif/hstate_r ),
	.I2(\spiflash_inst/u_spi_regif/n15_11 ),
	.F(\spiflash_inst/u_spi_regif/n15_7 )
);
defparam \spiflash_inst/u_spi_regif/n15_s2 .INIT=8'h40;
LUT4 \spiflash_inst/u_spi_regif/n15_s4  (
	.I0(\spiflash_inst/reg_wr_a_r ),
	.I1(\spiflash_inst/reg_rxf_empty ),
	.I2(\spiflash_inst/u_spi_regif/n15_14 ),
	.I3(I_hwrite_reg),
	.F(\spiflash_inst/u_spi_regif/n15_9 )
);
defparam \spiflash_inst/u_spi_regif/n15_s4 .INIT=16'h5333;
LUT3 \spiflash_inst/u_spi_regif/n15_s5  (
	.I0(\spiflash_inst/u_spi_regif/n15_11 ),
	.I1(I_hwrite_reg),
	.I2(\spiflash_inst/u_spi_regif/n15_12 ),
	.F(\spiflash_inst/u_spi_regif/n15_10 )
);
defparam \spiflash_inst/u_spi_regif/n15_s5 .INIT=8'hB0;
LUT4 \spiflash_inst/u_spi_regif/n41_s3  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(O_hreadyout_reg),
	.I2(\spiflash_inst/n351_17 ),
	.I3(\spiflash_inst/reg_reg_tra_ctrl_wr_5 ),
	.F(\spiflash_inst/u_spi_regif/n41_7 )
);
defparam \spiflash_inst/u_spi_regif/n41_s3 .INIT=16'h8000;
LUT2 \spiflash_inst/u_spi_regif/reg_rd_a_Z_s2  (
	.I0(I_haddr_reg[6]),
	.I1(I_haddr_reg[5]),
	.F(\spiflash_inst/reg_rd_a_Z_5 )
);
defparam \spiflash_inst/u_spi_regif/reg_rd_a_Z_s2 .INIT=4'h4;
LUT2 \spiflash_inst/u_spi_regif/reg_rd_a_Z_s3  (
	.I0(\spiflash_inst/hready_r ),
	.I1(\spiflash_inst/hwrite_r ),
	.F(\spiflash_inst/u_spi_regif/reg_rd_a_Z_6 )
);
defparam \spiflash_inst/u_spi_regif/reg_rd_a_Z_s3 .INIT=4'h1;
LUT3 \spiflash_inst/u_spi_regif/n15_s6  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_5 ),
	.F(\spiflash_inst/u_spi_regif/n15_11 )
);
defparam \spiflash_inst/u_spi_regif/n15_s6 .INIT=8'h80;
LUT4 \spiflash_inst/u_spi_regif/n15_s7  (
	.I0(\spiflash_inst/arb_busy_sclk_Z ),
	.I1(\spiflash_inst/reg_req_regclk ),
	.I2(\spiflash_inst/u_spi_regif/n41_6 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/u_spi_regif/n15_12 )
);
defparam \spiflash_inst/u_spi_regif/n15_s7 .INIT=16'hE0EE;
LUT4 \spiflash_inst/u_spi_regif/n15_s8  (
	.I0(I_hsel_reg),
	.I1(I_hreadyin_reg),
	.I2(I_htrans_reg[1]),
	.I3(\spiflash_inst/u_spi_regif/reg_rd_a_Z_3 ),
	.F(\spiflash_inst/u_spi_regif/n15_14 )
);
defparam \spiflash_inst/u_spi_regif/n15_s8 .INIT=16'h8000;
LUT4 \spiflash_inst/u_spi_regif/reg_wr_a_pre_s1  (
	.I0(I_hwrite_reg),
	.I1(I_hsel_reg),
	.I2(I_hreadyin_reg),
	.I3(I_htrans_reg[1]),
	.F(\spiflash_inst/u_spi_regif/reg_wr_a_pre )
);
defparam \spiflash_inst/u_spi_regif/reg_wr_a_pre_s1 .INIT=16'h8000;
LUT4 \spiflash_inst/u_spi_regif/reg_raddr_Z_2_s0  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(I_haddr_reg[2]),
	.I2(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/reg_raddr_Z [2])
);
defparam \spiflash_inst/u_spi_regif/reg_raddr_Z_2_s0 .INIT=16'hACAA;
LUT4 \spiflash_inst/u_spi_regif/reg_raddr_Z_3_s0  (
	.I0(\spiflash_inst/reg_waddr [3]),
	.I1(I_haddr_reg[3]),
	.I2(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/reg_raddr_Z [3])
);
defparam \spiflash_inst/u_spi_regif/reg_raddr_Z_3_s0 .INIT=16'hACAA;
LUT4 \spiflash_inst/u_spi_regif/reg_raddr_Z_4_s0  (
	.I0(\spiflash_inst/reg_waddr [4]),
	.I1(I_haddr_reg[4]),
	.I2(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/reg_raddr_Z [4])
);
defparam \spiflash_inst/u_spi_regif/reg_raddr_Z_4_s0 .INIT=16'hACAA;
LUT4 \spiflash_inst/u_spi_regif/reg_raddr_Z_5_s0  (
	.I0(\spiflash_inst/reg_waddr [5]),
	.I1(I_haddr_reg[5]),
	.I2(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/u_spi_regif/reg_raddr_Z_0 [5])
);
defparam \spiflash_inst/u_spi_regif/reg_raddr_Z_5_s0 .INIT=16'hACAA;
LUT4 \spiflash_inst/u_spi_regif/reg_raddr_Z_6_s0  (
	.I0(\spiflash_inst/reg_waddr [6]),
	.I1(I_haddr_reg[6]),
	.I2(\spiflash_inst/u_spi_regif/wr_rd_same_d1 ),
	.I3(\spiflash_inst/hready_r ),
	.F(\spiflash_inst/u_spi_regif/reg_raddr_Z_0 [6])
);
defparam \spiflash_inst/u_spi_regif/reg_raddr_Z_6_s0 .INIT=16'hACAA;
DFFC \spiflash_inst/u_spi_regif/hstate_r_s0  (
	.D(\spiflash_inst/u_spi_regif/hstate_r_nx ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_regif/hstate_r )
);
defparam \spiflash_inst/u_spi_regif/hstate_r_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_regif/reg_wr_a_r_s0  (
	.D(\spiflash_inst/u_spi_regif/reg_wr_a_pre ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_wr_a_r )
);
defparam \spiflash_inst/u_spi_regif/reg_wr_a_r_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_regif/wr_rd_same_d1_s0  (
	.D(\spiflash_inst/u_spi_regif/wr_rd_same ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_regif/wr_rd_same_d1 )
);
defparam \spiflash_inst/u_spi_regif/wr_rd_same_d1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/reg_addr_r_6_s0  (
	.D(I_haddr_reg[6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_waddr [6])
);
defparam \spiflash_inst/u_spi_regif/reg_addr_r_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/reg_addr_r_5_s0  (
	.D(I_haddr_reg[5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_waddr [5])
);
defparam \spiflash_inst/u_spi_regif/reg_addr_r_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/reg_addr_r_4_s0  (
	.D(I_haddr_reg[4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_waddr [4])
);
defparam \spiflash_inst/u_spi_regif/reg_addr_r_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/reg_addr_r_3_s0  (
	.D(I_haddr_reg[3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_waddr [3])
);
defparam \spiflash_inst/u_spi_regif/reg_addr_r_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/reg_addr_r_2_s0  (
	.D(I_haddr_reg[2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_waddr [2])
);
defparam \spiflash_inst/u_spi_regif/reg_addr_r_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_regif/hwrite_r_s0  (
	.D(I_hwrite_reg),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_regif/n41_4 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/hwrite_r )
);
defparam \spiflash_inst/u_spi_regif/hwrite_r_s0 .INIT=1'b0;
DFFP \spiflash_inst/u_spi_regif/hready_r_s0  (
	.D(\spiflash_inst/u_spi_regif/n15_6 ),
	.CLK(I_hclk),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/hready_r )
);
defparam \spiflash_inst/u_spi_regif/hready_r_s0 .INIT=1'b1;
ALU \spiflash_inst/u_spi_regif/n174_s0  (
	.I0(\spiflash_inst/reg_raddr_Z [2]),
	.I1(\spiflash_inst/reg_waddr [2]),
	.I3(GND),
	.CIN(GND),
	.COUT(\spiflash_inst/u_spi_regif/n174_3 ),
	.SUM(\spiflash_inst/u_spi_regif/n174_1_SUM )
);
defparam \spiflash_inst/u_spi_regif/n174_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_regif/n175_s0  (
	.I0(\spiflash_inst/reg_raddr_Z [3]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_regif/n174_3 ),
	.COUT(\spiflash_inst/u_spi_regif/n175_3 ),
	.SUM(\spiflash_inst/u_spi_regif/n175_1_SUM )
);
defparam \spiflash_inst/u_spi_regif/n175_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_regif/n176_s0  (
	.I0(\spiflash_inst/reg_raddr_Z [4]),
	.I1(\spiflash_inst/reg_waddr [4]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_regif/n175_3 ),
	.COUT(\spiflash_inst/u_spi_regif/n176_3 ),
	.SUM(\spiflash_inst/u_spi_regif/n176_1_SUM )
);
defparam \spiflash_inst/u_spi_regif/n176_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_regif/n177_s0  (
	.I0(\spiflash_inst/u_spi_regif/reg_raddr_Z_0 [5]),
	.I1(\spiflash_inst/reg_waddr [5]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_regif/n176_3 ),
	.COUT(\spiflash_inst/u_spi_regif/n177_3 ),
	.SUM(\spiflash_inst/u_spi_regif/n177_1_SUM )
);
defparam \spiflash_inst/u_spi_regif/n177_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_regif/n178_s0  (
	.I0(\spiflash_inst/u_spi_regif/reg_raddr_Z_0 [6]),
	.I1(\spiflash_inst/reg_waddr [6]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_regif/n177_3 ),
	.COUT(\spiflash_inst/u_spi_regif/n178_3 ),
	.SUM(\spiflash_inst/u_spi_regif/n178_1_SUM )
);
defparam \spiflash_inst/u_spi_regif/n178_s0 .ALU_MODE=3;
INV \spiflash_inst/u_spi_regif/n39_s2  (
	.I(I_hresetn),
	.O(\spiflash_inst/n39_6 )
);
LUT3 \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s0  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.F(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr )
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s0 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_reg/reg_reg_cmd_wr_s0  (
	.I0(\spiflash_inst/reg_waddr [3]),
	.I1(\spiflash_inst/reg_waddr [2]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.F(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr )
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_wr_s0 .INIT=8'h40;
LUT3 \spiflash_inst/u_spi_reg/reg_reg_addr_wr_s0  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.F(\spiflash_inst/u_spi_reg/reg_reg_addr_wr )
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_wr_s0 .INIT=8'h40;
LUT3 \spiflash_inst/u_spi_reg/reg_txf_wr_regclk_s0  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.F(\spiflash_inst/reg_txf_wr_regclk )
);
defparam \spiflash_inst/u_spi_reg/reg_txf_wr_regclk_s0 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_reg/n299_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [30]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n299_11 ),
	.F(\spiflash_inst/u_spi_reg/n299_9 )
);
defparam \spiflash_inst/u_spi_reg/n299_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n301_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [29]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n301_10 ),
	.F(\spiflash_inst/u_spi_reg/n301_9 )
);
defparam \spiflash_inst/u_spi_reg/n301_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n305_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [27]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n305_10 ),
	.F(\spiflash_inst/u_spi_reg/n305_9 )
);
defparam \spiflash_inst/u_spi_reg/n305_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n307_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [26]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n307_10 ),
	.F(\spiflash_inst/u_spi_reg/n307_9 )
);
defparam \spiflash_inst/u_spi_reg/n307_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n309_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [25]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n309_10 ),
	.F(\spiflash_inst/u_spi_reg/n309_9 )
);
defparam \spiflash_inst/u_spi_reg/n309_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n311_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [24]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n311_10 ),
	.F(\spiflash_inst/u_spi_reg/n311_9 )
);
defparam \spiflash_inst/u_spi_reg/n311_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n317_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [21]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n317_10 ),
	.F(\spiflash_inst/u_spi_reg/n317_9 )
);
defparam \spiflash_inst/u_spi_reg/n317_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n319_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [20]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n319_10 ),
	.F(\spiflash_inst/u_spi_reg/n319_9 )
);
defparam \spiflash_inst/u_spi_reg/n319_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n321_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [19]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n321_10 ),
	.F(\spiflash_inst/u_spi_reg/n321_9 )
);
defparam \spiflash_inst/u_spi_reg/n321_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n323_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [18]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n323_10 ),
	.F(\spiflash_inst/u_spi_reg/n323_9 )
);
defparam \spiflash_inst/u_spi_reg/n323_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n325_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [17]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n325_10 ),
	.F(\spiflash_inst/u_spi_reg/n325_9 )
);
defparam \spiflash_inst/u_spi_reg/n325_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n327_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [16]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n327_10 ),
	.F(\spiflash_inst/u_spi_reg/n327_9 )
);
defparam \spiflash_inst/u_spi_reg/n327_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n329_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [15]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n329_10 ),
	.F(\spiflash_inst/u_spi_reg/n329_9 )
);
defparam \spiflash_inst/u_spi_reg/n329_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n331_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [14]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n331_10 ),
	.F(\spiflash_inst/u_spi_reg/n331_9 )
);
defparam \spiflash_inst/u_spi_reg/n331_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n333_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [13]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n333_10 ),
	.F(\spiflash_inst/u_spi_reg/n333_9 )
);
defparam \spiflash_inst/u_spi_reg/n333_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n335_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [12]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n335_10 ),
	.F(\spiflash_inst/u_spi_reg/n335_9 )
);
defparam \spiflash_inst/u_spi_reg/n335_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n337_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [11]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n337_10 ),
	.F(\spiflash_inst/u_spi_reg/n337_9 )
);
defparam \spiflash_inst/u_spi_reg/n337_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n339_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [10]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n339_10 ),
	.F(\spiflash_inst/u_spi_reg/n339_9 )
);
defparam \spiflash_inst/u_spi_reg/n339_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n341_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [9]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n341_10 ),
	.F(\spiflash_inst/u_spi_reg/n341_9 )
);
defparam \spiflash_inst/u_spi_reg/n341_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n343_s5  (
	.I0(\spiflash_inst/rxf_rd_data_Z [8]),
	.I1(\spiflash_inst/n299_10 ),
	.I2(\spiflash_inst/u_spi_reg/n343_10 ),
	.F(\spiflash_inst/u_spi_reg/n343_9 )
);
defparam \spiflash_inst/u_spi_reg/n343_s5 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n345_s6  (
	.I0(\spiflash_inst/u_spi_reg/n345_11 ),
	.I1(\spiflash_inst/u_spi_reg/n345_12 ),
	.I2(\spiflash_inst/u_spi_reg/n345_13 ),
	.F(\spiflash_inst/u_spi_reg/n345_10 )
);
defparam \spiflash_inst/u_spi_reg/n345_s6 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n347_s6  (
	.I0(\spiflash_inst/u_spi_reg/n347_11 ),
	.I1(\spiflash_inst/u_spi_reg/n345_12 ),
	.I2(\spiflash_inst/u_spi_reg/n347_12 ),
	.F(\spiflash_inst/u_spi_reg/n347_10 )
);
defparam \spiflash_inst/u_spi_reg/n347_s6 .INIT=8'h8F;
LUT4 \spiflash_inst/u_spi_reg/n351_s7  (
	.I0(\spiflash_inst/u_spi_reg/n351_12 ),
	.I1(\spiflash_inst/reg_opcode [4]),
	.I2(\spiflash_inst/u_spi_reg/n351_13 ),
	.I3(\spiflash_inst/u_spi_reg/n351_14 ),
	.F(\spiflash_inst/u_spi_reg/n351_11 )
);
defparam \spiflash_inst/u_spi_reg/n351_s7 .INIT=16'hFFF8;
LUT3 \spiflash_inst/u_spi_reg/n349_s8  (
	.I0(\spiflash_inst/u_spi_reg/n349_13 ),
	.I1(\spiflash_inst/u_spi_reg/n345_12 ),
	.I2(\spiflash_inst/u_spi_reg/n349_14 ),
	.F(\spiflash_inst/u_spi_reg/n349_12 )
);
defparam \spiflash_inst/u_spi_reg/n349_s8 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n353_s8  (
	.I0(\spiflash_inst/u_spi_reg/n353_13 ),
	.I1(\spiflash_inst/u_spi_reg/n345_12 ),
	.I2(\spiflash_inst/u_spi_reg/n353_14 ),
	.F(\spiflash_inst/u_spi_reg/n353_12 )
);
defparam \spiflash_inst/u_spi_reg/n353_s8 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n355_s8  (
	.I0(\spiflash_inst/u_spi_reg/n355_13 ),
	.I1(\spiflash_inst/u_spi_reg/n345_12 ),
	.I2(\spiflash_inst/u_spi_reg/n355_14 ),
	.F(\spiflash_inst/u_spi_reg/n355_12 )
);
defparam \spiflash_inst/u_spi_reg/n355_s8 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_reg/n357_s8  (
	.I0(\spiflash_inst/u_spi_reg/n345_12 ),
	.I1(\spiflash_inst/u_spi_reg/n357_13 ),
	.I2(\spiflash_inst/u_spi_reg/n357_14 ),
	.F(\spiflash_inst/u_spi_reg/n357_12 )
);
defparam \spiflash_inst/u_spi_reg/n357_s8 .INIT=8'h2F;
LUT4 \spiflash_inst/u_spi_reg/n358_s9  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [0]),
	.I2(\spiflash_inst/u_spi_reg/n358_14 ),
	.I3(\spiflash_inst/u_spi_reg/n358_15 ),
	.F(\spiflash_inst/u_spi_reg/n358_13 )
);
defparam \spiflash_inst/u_spi_reg/n358_s9 .INIT=16'hFFF8;
LUT4 \spiflash_inst/u_spi_reg/n297_s5  (
	.I0(\spiflash_inst/reg_spi_addr [31]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/rxf_rd_data_Z [31]),
	.I3(\spiflash_inst/n299_10 ),
	.F(\spiflash_inst/u_spi_reg/n297_10 )
);
defparam \spiflash_inst/u_spi_reg/n297_s5 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_reg/n303_s7  (
	.I0(\spiflash_inst/reg_spi_addr [28]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/rxf_rd_data_Z [28]),
	.I3(\spiflash_inst/n299_10 ),
	.F(\spiflash_inst/u_spi_reg/n303_12 )
);
defparam \spiflash_inst/u_spi_reg/n303_s7 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_reg/n313_s7  (
	.I0(\spiflash_inst/reg_spi_addr [23]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/rxf_rd_data_Z [23]),
	.I3(\spiflash_inst/n299_10 ),
	.F(\spiflash_inst/u_spi_reg/n313_12 )
);
defparam \spiflash_inst/u_spi_reg/n313_s7 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_reg/n315_s7  (
	.I0(\spiflash_inst/reg_spi_addr [22]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/rxf_rd_data_Z [22]),
	.I3(\spiflash_inst/n299_10 ),
	.F(\spiflash_inst/u_spi_reg/n315_12 )
);
defparam \spiflash_inst/u_spi_reg/n315_s7 .INIT=16'hF888;
LUT3 \spiflash_inst/u_spi_reg/n268_s2  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/u_spi_reg/n268_8 ),
	.F(\spiflash_inst/u_spi_reg/n268_7 )
);
defparam \spiflash_inst/u_spi_reg/n268_s2 .INIT=8'h7F;
LUT4 \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s1  (
	.I0(\spiflash_inst/hready_r ),
	.I1(\spiflash_inst/hwrite_r ),
	.I2(\spiflash_inst/reg_wr_a_r ),
	.I3(\spiflash_inst/reg_reg_tra_ctrl_wr_5 ),
	.F(\spiflash_inst/reg_reg_tra_ctrl_wr_4 )
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s1 .INIT=16'hF400;
LUT2 \spiflash_inst/u_spi_reg/n299_s6  (
	.I0(\spiflash_inst/reg_raddr_Z [4]),
	.I1(\spiflash_inst/u_spi_reg/n299_18 ),
	.F(\spiflash_inst/n299_10 )
);
defparam \spiflash_inst/u_spi_reg/n299_s6 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_reg/n299_s7  (
	.I0(\spiflash_inst/reg_spi_addr [30]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [30]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n299_11 )
);
defparam \spiflash_inst/u_spi_reg/n299_s7 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n301_s6  (
	.I0(\spiflash_inst/reg_spi_addr [29]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [29]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n301_10 )
);
defparam \spiflash_inst/u_spi_reg/n301_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n305_s6  (
	.I0(\spiflash_inst/reg_spi_addr [27]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [27]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n305_10 )
);
defparam \spiflash_inst/u_spi_reg/n305_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n307_s6  (
	.I0(\spiflash_inst/reg_spi_addr [26]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n307_10 )
);
defparam \spiflash_inst/u_spi_reg/n307_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n309_s6  (
	.I0(\spiflash_inst/reg_spi_addr [25]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [25]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n309_10 )
);
defparam \spiflash_inst/u_spi_reg/n309_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n311_s6  (
	.I0(\spiflash_inst/reg_spi_addr [24]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [24]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n311_10 )
);
defparam \spiflash_inst/u_spi_reg/n311_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n317_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [21]),
	.I2(\spiflash_inst/reg_spi_addr [21]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n317_10 )
);
defparam \spiflash_inst/u_spi_reg/n317_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n319_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [20]),
	.I2(\spiflash_inst/reg_spi_addr [20]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n319_10 )
);
defparam \spiflash_inst/u_spi_reg/n319_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n321_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [19]),
	.I2(\spiflash_inst/reg_spi_addr [19]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n321_10 )
);
defparam \spiflash_inst/u_spi_reg/n321_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n323_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [18]),
	.I2(\spiflash_inst/reg_spi_addr [18]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n323_10 )
);
defparam \spiflash_inst/u_spi_reg/n323_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n325_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [17]),
	.I2(\spiflash_inst/reg_spi_addr [17]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n325_10 )
);
defparam \spiflash_inst/u_spi_reg/n325_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n327_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [16]),
	.I2(\spiflash_inst/reg_spi_addr [16]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n327_10 )
);
defparam \spiflash_inst/u_spi_reg/n327_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n329_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [15]),
	.I2(\spiflash_inst/reg_spi_addr [15]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n329_10 )
);
defparam \spiflash_inst/u_spi_reg/n329_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n331_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [14]),
	.I2(\spiflash_inst/reg_spi_addr [14]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n331_10 )
);
defparam \spiflash_inst/u_spi_reg/n331_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n333_s6  (
	.I0(\spiflash_inst/reg_spi_addr [13]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [13]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n333_10 )
);
defparam \spiflash_inst/u_spi_reg/n333_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n335_s6  (
	.I0(\spiflash_inst/reg_spi_addr [12]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [12]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n335_10 )
);
defparam \spiflash_inst/u_spi_reg/n335_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n337_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [11]),
	.I2(\spiflash_inst/reg_spi_addr [11]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n337_10 )
);
defparam \spiflash_inst/u_spi_reg/n337_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n339_s6  (
	.I0(\spiflash_inst/reg_spi_addr [10]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [10]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n339_10 )
);
defparam \spiflash_inst/u_spi_reg/n339_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n341_s6  (
	.I0(\spiflash_inst/reg_spi_addr [9]),
	.I1(\spiflash_inst/u_spi_reg/n297_13 ),
	.I2(\spiflash_inst/reg_trans_ctrl [9]),
	.I3(\spiflash_inst/u_spi_reg/n299_16 ),
	.F(\spiflash_inst/u_spi_reg/n341_10 )
);
defparam \spiflash_inst/u_spi_reg/n341_s6 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n343_s6  (
	.I0(\spiflash_inst/u_spi_reg/n299_16 ),
	.I1(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [8]),
	.I2(\spiflash_inst/reg_spi_addr [8]),
	.I3(\spiflash_inst/u_spi_reg/n297_13 ),
	.F(\spiflash_inst/u_spi_reg/n343_10 )
);
defparam \spiflash_inst/u_spi_reg/n343_s6 .INIT=16'h0777;
LUT3 \spiflash_inst/u_spi_reg/n345_s7  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [7]),
	.I1(\spiflash_inst/reg_spi_addr [7]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n345_11 )
);
defparam \spiflash_inst/u_spi_reg/n345_s7 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_reg/n345_s8  (
	.I0(\spiflash_inst/reg_raddr_Z [2]),
	.I1(\spiflash_inst/u_spi_reg/n345_14 ),
	.I2(\spiflash_inst/reg_raddr_Z [4]),
	.F(\spiflash_inst/u_spi_reg/n345_12 )
);
defparam \spiflash_inst/u_spi_reg/n345_s8 .INIT=8'h01;
LUT4 \spiflash_inst/u_spi_reg/n345_s9  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [7]),
	.I2(\spiflash_inst/reg_opcode [7]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n345_13 )
);
defparam \spiflash_inst/u_spi_reg/n345_s9 .INIT=16'h0777;
LUT3 \spiflash_inst/u_spi_reg/n347_s7  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [6]),
	.I1(\spiflash_inst/reg_spi_addr [6]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n347_11 )
);
defparam \spiflash_inst/u_spi_reg/n347_s7 .INIT=8'hCA;
LUT4 \spiflash_inst/u_spi_reg/n347_s8  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [6]),
	.I2(\spiflash_inst/reg_opcode [6]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n347_12 )
);
defparam \spiflash_inst/u_spi_reg/n347_s8 .INIT=16'h0777;
LUT2 \spiflash_inst/u_spi_reg/n351_s8  (
	.I0(\spiflash_inst/reg_raddr_Z [4]),
	.I1(\spiflash_inst/n351_17 ),
	.F(\spiflash_inst/u_spi_reg/n351_12 )
);
defparam \spiflash_inst/u_spi_reg/n351_s8 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_reg/n351_s9  (
	.I0(\spiflash_inst/rxf_rd_data_Z [4]),
	.I1(\spiflash_inst/u_spi_reg/spi_trans_end_int_r ),
	.I2(\spiflash_inst/reg_raddr_Z [4]),
	.I3(\spiflash_inst/u_spi_reg/n299_18 ),
	.F(\spiflash_inst/u_spi_reg/n351_13 )
);
defparam \spiflash_inst/u_spi_reg/n351_s9 .INIT=16'hCA00;
LUT4 \spiflash_inst/u_spi_reg/n351_s10  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [4]),
	.I1(\spiflash_inst/reg_spi_addr [4]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.I3(\spiflash_inst/u_spi_reg/n345_12 ),
	.F(\spiflash_inst/u_spi_reg/n351_14 )
);
defparam \spiflash_inst/u_spi_reg/n351_s10 .INIT=16'hCA00;
LUT3 \spiflash_inst/u_spi_reg/n349_s9  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [5]),
	.I1(\spiflash_inst/reg_spi_addr [5]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n349_13 )
);
defparam \spiflash_inst/u_spi_reg/n349_s9 .INIT=8'hCA;
LUT4 \spiflash_inst/u_spi_reg/n349_s10  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [5]),
	.I2(\spiflash_inst/reg_opcode [5]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n349_14 )
);
defparam \spiflash_inst/u_spi_reg/n349_s10 .INIT=16'h0777;
LUT3 \spiflash_inst/u_spi_reg/n353_s9  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [3]),
	.I1(\spiflash_inst/reg_spi_addr [3]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n353_13 )
);
defparam \spiflash_inst/u_spi_reg/n353_s9 .INIT=8'hCA;
LUT4 \spiflash_inst/u_spi_reg/n353_s10  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [3]),
	.I2(\spiflash_inst/reg_opcode [3]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n353_14 )
);
defparam \spiflash_inst/u_spi_reg/n353_s10 .INIT=16'h0777;
LUT3 \spiflash_inst/u_spi_reg/n355_s9  (
	.I0(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [2]),
	.I1(\spiflash_inst/reg_spi_addr [2]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n355_13 )
);
defparam \spiflash_inst/u_spi_reg/n355_s9 .INIT=8'hCA;
LUT4 \spiflash_inst/u_spi_reg/n355_s10  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [2]),
	.I2(\spiflash_inst/reg_opcode [2]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n355_14 )
);
defparam \spiflash_inst/u_spi_reg/n355_s10 .INIT=16'h0777;
LUT3 \spiflash_inst/u_spi_reg/n357_s9  (
	.I0(\spiflash_inst/reg_spi_addr [1]),
	.I1(\spiflash_inst/reg_trans_ctrl [1]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.F(\spiflash_inst/u_spi_reg/n357_13 )
);
defparam \spiflash_inst/u_spi_reg/n357_s9 .INIT=8'h53;
LUT4 \spiflash_inst/u_spi_reg/n357_s10  (
	.I0(\spiflash_inst/n299_10 ),
	.I1(\spiflash_inst/rxf_rd_data_Z [1]),
	.I2(\spiflash_inst/reg_opcode [1]),
	.I3(\spiflash_inst/u_spi_reg/n351_12 ),
	.F(\spiflash_inst/u_spi_reg/n357_14 )
);
defparam \spiflash_inst/u_spi_reg/n357_s10 .INIT=16'h0777;
LUT4 \spiflash_inst/u_spi_reg/n358_s10  (
	.I0(\spiflash_inst/reg_spi_addr [0]),
	.I1(\spiflash_inst/reg_trans_ctrl [0]),
	.I2(\spiflash_inst/reg_raddr_Z [3]),
	.I3(\spiflash_inst/u_spi_reg/n345_12 ),
	.F(\spiflash_inst/u_spi_reg/n358_14 )
);
defparam \spiflash_inst/u_spi_reg/n358_s10 .INIT=16'hAC00;
LUT4 \spiflash_inst/u_spi_reg/n358_s11  (
	.I0(\spiflash_inst/reg_opcode [0]),
	.I1(\spiflash_inst/u_spi_reg/n358_16 ),
	.I2(\spiflash_inst/reg_raddr_Z [4]),
	.I3(\spiflash_inst/n351_17 ),
	.F(\spiflash_inst/u_spi_reg/n358_15 )
);
defparam \spiflash_inst/u_spi_reg/n358_s11 .INIT=16'h3A00;
LUT4 \spiflash_inst/u_spi_reg/n268_s3  (
	.I0(\spiflash_inst/reg_waddr [6]),
	.I1(\spiflash_inst/reg_waddr [4]),
	.I2(\spiflash_inst/reg_waddr [5]),
	.I3(\spiflash_inst/u_spi_reg/n268_9 ),
	.F(\spiflash_inst/u_spi_reg/n268_8 )
);
defparam \spiflash_inst/u_spi_reg/n268_s3 .INIT=16'h4000;
LUT3 \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s2  (
	.I0(\spiflash_inst/reg_waddr [4]),
	.I1(\spiflash_inst/reg_waddr [6]),
	.I2(\spiflash_inst/reg_waddr [5]),
	.F(\spiflash_inst/reg_reg_tra_ctrl_wr_5 )
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr_s2 .INIT=8'h10;
LUT4 \spiflash_inst/u_spi_reg/n345_s10  (
	.I0(\spiflash_inst/reg_waddr [6]),
	.I1(\spiflash_inst/reg_waddr [5]),
	.I2(O_hreadyout_reg),
	.I3(\spiflash_inst/reg_rd_a_Z_5 ),
	.F(\spiflash_inst/u_spi_reg/n345_14 )
);
defparam \spiflash_inst/u_spi_reg/n345_s10 .INIT=16'h0BFB;
LUT2 \spiflash_inst/u_spi_reg/n358_s12  (
	.I0(\spiflash_inst/reg_req_regclk ),
	.I1(\spiflash_inst/arb_busy_sclk_Z ),
	.F(\spiflash_inst/u_spi_reg/n358_16 )
);
defparam \spiflash_inst/u_spi_reg/n358_s12 .INIT=4'h1;
LUT4 \spiflash_inst/u_spi_reg/n268_s4  (
	.I0(\spiflash_inst/hready_r ),
	.I1(\spiflash_inst/hwrite_r ),
	.I2(\spiflash_inst/reg_wr_a_r ),
	.I3(I_hwdata_reg[4]),
	.F(\spiflash_inst/u_spi_reg/n268_9 )
);
defparam \spiflash_inst/u_spi_reg/n268_s4 .INIT=16'hF400;
LUT4 \spiflash_inst/u_spi_reg/spi_trans_end_int_r_s4  (
	.I0(\spiflash_inst/arb_trans_end_sysclk_Z ),
	.I1(\spiflash_inst/reg_waddr [2]),
	.I2(\spiflash_inst/reg_waddr [3]),
	.I3(\spiflash_inst/u_spi_reg/n268_8 ),
	.F(\spiflash_inst/u_spi_reg/spi_trans_end_int_r_10 )
);
defparam \spiflash_inst/u_spi_reg/spi_trans_end_int_r_s4 .INIT=16'hEAAA;
LUT4 \spiflash_inst/u_spi_reg/reg_req_r_s4  (
	.I0(\spiflash_inst/arb_trans_end_sysclk_Z ),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_waddr [2]),
	.I3(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.F(\spiflash_inst/u_spi_reg/reg_req_r_8 )
);
defparam \spiflash_inst/u_spi_reg/reg_req_r_s4 .INIT=16'hBAAA;
LUT4 \spiflash_inst/u_spi_reg/n299_s11  (
	.I0(\spiflash_inst/reg_raddr_Z [3]),
	.I1(\spiflash_inst/reg_raddr_Z [2]),
	.I2(\spiflash_inst/u_spi_reg/n345_14 ),
	.I3(\spiflash_inst/reg_raddr_Z [4]),
	.F(\spiflash_inst/u_spi_reg/n299_16 )
);
defparam \spiflash_inst/u_spi_reg/n299_s11 .INIT=16'h0001;
LUT4 \spiflash_inst/u_spi_reg/n297_s7  (
	.I0(\spiflash_inst/reg_raddr_Z [3]),
	.I1(\spiflash_inst/reg_raddr_Z [2]),
	.I2(\spiflash_inst/u_spi_reg/n345_14 ),
	.I3(\spiflash_inst/reg_raddr_Z [4]),
	.F(\spiflash_inst/u_spi_reg/n297_13 )
);
defparam \spiflash_inst/u_spi_reg/n297_s7 .INIT=16'h0002;
LUT3 \spiflash_inst/u_spi_reg/n351_s12  (
	.I0(\spiflash_inst/reg_raddr_Z [3]),
	.I1(\spiflash_inst/u_spi_reg/n345_14 ),
	.I2(\spiflash_inst/reg_raddr_Z [2]),
	.F(\spiflash_inst/n351_17 )
);
defparam \spiflash_inst/u_spi_reg/n351_s12 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_reg/n299_s12  (
	.I0(\spiflash_inst/reg_raddr_Z [3]),
	.I1(\spiflash_inst/u_spi_reg/n345_14 ),
	.I2(\spiflash_inst/reg_raddr_Z [2]),
	.F(\spiflash_inst/u_spi_reg/n299_18 )
);
defparam \spiflash_inst/u_spi_reg/n299_s12 .INIT=8'h20;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_29_s0  (
	.D(I_hwdata_reg[29]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [29])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_29_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_27_s0  (
	.D(I_hwdata_reg[27]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [27])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_27_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_26_s0  (
	.D(I_hwdata_reg[26]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [26])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_26_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_25_s0  (
	.D(I_hwdata_reg[25]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [25])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_25_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_24_s0  (
	.D(I_hwdata_reg[24]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [24])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_24_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_21_s0  (
	.D(I_hwdata_reg[21]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [21])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_21_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_20_s0  (
	.D(I_hwdata_reg[20]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [20])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_20_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_19_s0  (
	.D(I_hwdata_reg[19]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [19])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_19_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_18_s0  (
	.D(I_hwdata_reg[18]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [18])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_18_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_17_s0  (
	.D(I_hwdata_reg[17]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [17])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_17_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_16_s0  (
	.D(I_hwdata_reg[16]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [16])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_16_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_15_s0  (
	.D(I_hwdata_reg[15]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [15])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_15_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_14_s0  (
	.D(I_hwdata_reg[14]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [14])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_14_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_13_s0  (
	.D(I_hwdata_reg[13]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [13])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_13_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_12_s0  (
	.D(I_hwdata_reg[12]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [12])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_12_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_11_s0  (
	.D(I_hwdata_reg[11]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [11])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_11_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_10_s0  (
	.D(I_hwdata_reg[10]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [10])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_10_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_9_s0  (
	.D(I_hwdata_reg[9]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [9])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_9_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_8_s0  (
	.D(I_hwdata_reg[8]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [8])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_8_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_7_s0  (
	.D(I_hwdata_reg[7]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [7])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_6_s0  (
	.D(I_hwdata_reg[6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [6])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_5_s0  (
	.D(I_hwdata_reg[5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [5])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_4_s0  (
	.D(I_hwdata_reg[4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [4])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_3_s0  (
	.D(I_hwdata_reg[3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [3])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_2_s0  (
	.D(I_hwdata_reg[2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/reg_trans_ctrl_2 [2])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_1_s0  (
	.D(I_hwdata_reg[1]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [1])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_0_s0  (
	.D(I_hwdata_reg[0]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [0])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_7_s0  (
	.D(I_hwdata_reg[7]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [7])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_6_s0  (
	.D(I_hwdata_reg[6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [6])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_5_s0  (
	.D(I_hwdata_reg[5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [5])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_4_s0  (
	.D(I_hwdata_reg[4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [4])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_3_s0  (
	.D(I_hwdata_reg[3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [3])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_2_s0  (
	.D(I_hwdata_reg[2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [2])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_1_s0  (
	.D(I_hwdata_reg[1]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [1])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_cmd_r_0_s0  (
	.D(I_hwdata_reg[0]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_cmd_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_opcode [0])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_cmd_r_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_31_s0  (
	.D(I_hwdata_reg[31]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [31])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_31_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_30_s0  (
	.D(I_hwdata_reg[30]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [30])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_30_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_29_s0  (
	.D(I_hwdata_reg[29]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [29])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_29_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_28_s0  (
	.D(I_hwdata_reg[28]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [28])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_28_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_27_s0  (
	.D(I_hwdata_reg[27]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [27])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_27_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_26_s0  (
	.D(I_hwdata_reg[26]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [26])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_26_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_25_s0  (
	.D(I_hwdata_reg[25]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [25])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_25_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_24_s0  (
	.D(I_hwdata_reg[24]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [24])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_24_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_23_s0  (
	.D(I_hwdata_reg[23]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [23])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_23_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_22_s0  (
	.D(I_hwdata_reg[22]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [22])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_22_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_21_s0  (
	.D(I_hwdata_reg[21]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [21])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_21_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_20_s0  (
	.D(I_hwdata_reg[20]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [20])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_20_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_19_s0  (
	.D(I_hwdata_reg[19]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [19])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_19_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_18_s0  (
	.D(I_hwdata_reg[18]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [18])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_18_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_17_s0  (
	.D(I_hwdata_reg[17]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [17])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_17_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_16_s0  (
	.D(I_hwdata_reg[16]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [16])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_16_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_15_s0  (
	.D(I_hwdata_reg[15]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [15])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_15_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_14_s0  (
	.D(I_hwdata_reg[14]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [14])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_14_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_13_s0  (
	.D(I_hwdata_reg[13]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [13])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_13_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_12_s0  (
	.D(I_hwdata_reg[12]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [12])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_12_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_11_s0  (
	.D(I_hwdata_reg[11]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [11])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_11_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_10_s0  (
	.D(I_hwdata_reg[10]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [10])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_10_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_9_s0  (
	.D(I_hwdata_reg[9]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [9])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_9_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_8_s0  (
	.D(I_hwdata_reg[8]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [8])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_8_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_7_s0  (
	.D(I_hwdata_reg[7]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [7])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_6_s0  (
	.D(I_hwdata_reg[6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [6])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_5_s0  (
	.D(I_hwdata_reg[5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [5])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_4_s0  (
	.D(I_hwdata_reg[4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [4])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_3_s0  (
	.D(I_hwdata_reg[3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [3])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_2_s0  (
	.D(I_hwdata_reg[2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [2])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_1_s0  (
	.D(I_hwdata_reg[1]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [1])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_addr_r_0_s0  (
	.D(I_hwdata_reg[0]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_addr_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_spi_addr [0])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_addr_r_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_31_s0  (
	.D(\spiflash_inst/u_spi_reg/n297_10 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[31])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_31_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_30_s0  (
	.D(\spiflash_inst/u_spi_reg/n299_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[30])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_30_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_29_s0  (
	.D(\spiflash_inst/u_spi_reg/n301_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[29])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_29_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_28_s0  (
	.D(\spiflash_inst/u_spi_reg/n303_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[28])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_28_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_27_s0  (
	.D(\spiflash_inst/u_spi_reg/n305_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[27])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_27_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_26_s0  (
	.D(\spiflash_inst/u_spi_reg/n307_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[26])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_26_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_25_s0  (
	.D(\spiflash_inst/u_spi_reg/n309_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[25])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_25_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_24_s0  (
	.D(\spiflash_inst/u_spi_reg/n311_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[24])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_24_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_23_s0  (
	.D(\spiflash_inst/u_spi_reg/n313_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[23])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_23_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_22_s0  (
	.D(\spiflash_inst/u_spi_reg/n315_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[22])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_22_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_21_s0  (
	.D(\spiflash_inst/u_spi_reg/n317_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[21])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_21_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_20_s0  (
	.D(\spiflash_inst/u_spi_reg/n319_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[20])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_20_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_19_s0  (
	.D(\spiflash_inst/u_spi_reg/n321_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[19])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_19_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_18_s0  (
	.D(\spiflash_inst/u_spi_reg/n323_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[18])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_18_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_17_s0  (
	.D(\spiflash_inst/u_spi_reg/n325_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[17])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_17_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_16_s0  (
	.D(\spiflash_inst/u_spi_reg/n327_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[16])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_16_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_15_s0  (
	.D(\spiflash_inst/u_spi_reg/n329_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[15])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_15_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_14_s0  (
	.D(\spiflash_inst/u_spi_reg/n331_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[14])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_14_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_13_s0  (
	.D(\spiflash_inst/u_spi_reg/n333_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[13])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_13_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_12_s0  (
	.D(\spiflash_inst/u_spi_reg/n335_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[12])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_12_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_11_s0  (
	.D(\spiflash_inst/u_spi_reg/n337_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[11])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_11_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_10_s0  (
	.D(\spiflash_inst/u_spi_reg/n339_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[10])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_10_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_9_s0  (
	.D(\spiflash_inst/u_spi_reg/n341_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[9])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_9_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_8_s0  (
	.D(\spiflash_inst/u_spi_reg/n343_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[8])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_8_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_7_s0  (
	.D(\spiflash_inst/u_spi_reg/n345_10 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[7])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_6_s0  (
	.D(\spiflash_inst/u_spi_reg/n347_10 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[6])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_5_s0  (
	.D(\spiflash_inst/u_spi_reg/n349_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[5])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_4_s0  (
	.D(\spiflash_inst/u_spi_reg/n351_11 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[4])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_3_s0  (
	.D(\spiflash_inst/u_spi_reg/n353_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[3])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_2_s0  (
	.D(\spiflash_inst/u_spi_reg/n355_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[2])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_1_s0  (
	.D(\spiflash_inst/u_spi_reg/n357_12 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[1])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_rdata_r_0_s0  (
	.D(\spiflash_inst/u_spi_reg/n358_13 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_rd_a_Z ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(O_hrdata_reg[0])
);
defparam \spiflash_inst/u_spi_reg/reg_rdata_r_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_30_s0  (
	.D(I_hwdata_reg[30]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_trans_ctrl [30])
);
defparam \spiflash_inst/u_spi_reg/reg_reg_tra_ctrl_r_30_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/reg_req_r_s1  (
	.D(\spiflash_inst/u_spi_reg/n150_8 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/reg_req_r_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_req_regclk )
);
defparam \spiflash_inst/u_spi_reg/reg_req_r_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_reg/spi_trans_end_int_r_s1  (
	.D(\spiflash_inst/u_spi_reg/n268_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_reg/spi_trans_end_int_r_10 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_reg/spi_trans_end_int_r )
);
defparam \spiflash_inst/u_spi_reg/spi_trans_end_int_r_s1 .INIT=1'b0;
LUT1 \spiflash_inst/u_spi_reg/n150_s3  (
	.I0(\spiflash_inst/arb_trans_end_sysclk_Z ),
	.F(\spiflash_inst/u_spi_reg/n150_8 )
);
defparam \spiflash_inst/u_spi_reg/n150_s3 .INIT=2'h1;
LUT2 \spiflash_inst/u_spi_fifo/rx_dflag_s3  (
	.I0(\spiflash_inst/rxf_wr ),
	.I1(\spiflash_inst/u_spi_fifo/rx_dflag_9 ),
	.F(\spiflash_inst/u_spi_fifo/rx_dflag_8 )
);
defparam \spiflash_inst/u_spi_fifo/rx_dflag_s3 .INIT=4'hE;
LUT3 \spiflash_inst/u_spi_fifo/n181_s1  (
	.I0(\spiflash_inst/u_spi_fifo/rx_dcnt [1]),
	.I1(\spiflash_inst/u_spi_fifo/rx_dcnt [0]),
	.I2(\spiflash_inst/u_spi_fifo/rx_dflag ),
	.F(\spiflash_inst/u_spi_fifo/n181_6 )
);
defparam \spiflash_inst/u_spi_fifo/n181_s1 .INIT=8'hB0;
LUT3 \spiflash_inst/u_spi_fifo/n180_s1  (
	.I0(\spiflash_inst/u_spi_fifo/rx_dcnt [1]),
	.I1(\spiflash_inst/u_spi_fifo/rx_dcnt [0]),
	.I2(\spiflash_inst/u_spi_fifo/rx_dflag ),
	.F(\spiflash_inst/u_spi_fifo/n180_6 )
);
defparam \spiflash_inst/u_spi_fifo/n180_s1 .INIT=8'hE0;
LUT3 \spiflash_inst/u_spi_fifo/n87_s1  (
	.I0(\spiflash_inst/u_spi_fifo/tx_dcnt [1]),
	.I1(\spiflash_inst/u_spi_fifo/tx_dcnt [0]),
	.I2(\spiflash_inst/u_spi_fifo/tx_dflag ),
	.F(\spiflash_inst/u_spi_fifo/n87_6 )
);
defparam \spiflash_inst/u_spi_fifo/n87_s1 .INIT=8'hB0;
LUT3 \spiflash_inst/u_spi_fifo/n86_s1  (
	.I0(\spiflash_inst/u_spi_fifo/tx_dcnt [1]),
	.I1(\spiflash_inst/u_spi_fifo/tx_dcnt [0]),
	.I2(\spiflash_inst/u_spi_fifo/tx_dflag ),
	.F(\spiflash_inst/u_spi_fifo/n86_6 )
);
defparam \spiflash_inst/u_spi_fifo/n86_s1 .INIT=8'hE0;
LUT3 \spiflash_inst/u_spi_fifo/rx_dflag_s4  (
	.I0(\spiflash_inst/reg_rxf_empty ),
	.I1(\spiflash_inst/reg_rd_a_Z ),
	.I2(\spiflash_inst/n299_10 ),
	.F(\spiflash_inst/u_spi_fifo/rx_dflag_9 )
);
defparam \spiflash_inst/u_spi_fifo/rx_dflag_s4 .INIT=8'h40;
LUT4 \spiflash_inst/u_spi_fifo/tx_dflag_s4  (
	.I0(\spiflash_inst/reg_waddr [2]),
	.I1(\spiflash_inst/reg_waddr [3]),
	.I2(\spiflash_inst/reg_reg_tra_ctrl_wr_4 ),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_fifo/tx_dflag_10 )
);
defparam \spiflash_inst/u_spi_fifo/tx_dflag_s4 .INIT=16'hFF80;
LUT4 \spiflash_inst/u_spi_fifo/n188_s4  (
	.I0(\spiflash_inst/u_spi_fifo/rx_dcnt [0]),
	.I1(\spiflash_inst/u_spi_fifo/rx_dcnt [1]),
	.I2(\spiflash_inst/reg_rxf_empty ),
	.I3(\spiflash_inst/u_spi_fifo/rx_dflag_9 ),
	.F(\spiflash_inst/u_spi_fifo/n188_12 )
);
defparam \spiflash_inst/u_spi_fifo/n188_s4 .INIT=16'hBBB0;
LUT4 \spiflash_inst/u_spi_fifo/n94_s4  (
	.I0(\spiflash_inst/u_spi_fifo/tx_dcnt [0]),
	.I1(\spiflash_inst/u_spi_fifo/tx_dcnt [1]),
	.I2(\spiflash_inst/txf_empty_Z ),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_fifo/n94_9 )
);
defparam \spiflash_inst/u_spi_fifo/n94_s4 .INIT=16'hBBB0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_30_s0  (
	.D(I_hwdata_reg[30]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [30])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_30_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_29_s0  (
	.D(I_hwdata_reg[29]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [29])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_29_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_28_s0  (
	.D(I_hwdata_reg[28]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [28])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_28_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_27_s0  (
	.D(I_hwdata_reg[27]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [27])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_27_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_26_s0  (
	.D(I_hwdata_reg[26]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [26])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_26_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_25_s0  (
	.D(I_hwdata_reg[25]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [25])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_25_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_24_s0  (
	.D(I_hwdata_reg[24]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [24])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_24_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_23_s0  (
	.D(I_hwdata_reg[23]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [23])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_23_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_22_s0  (
	.D(I_hwdata_reg[22]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [22])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_22_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_21_s0  (
	.D(I_hwdata_reg[21]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [21])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_21_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_20_s0  (
	.D(I_hwdata_reg[20]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [20])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_20_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_19_s0  (
	.D(I_hwdata_reg[19]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [19])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_19_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_18_s0  (
	.D(I_hwdata_reg[18]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [18])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_18_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_17_s0  (
	.D(I_hwdata_reg[17]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [17])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_17_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_16_s0  (
	.D(I_hwdata_reg[16]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [16])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_16_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_15_s0  (
	.D(I_hwdata_reg[15]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [15])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_15_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_14_s0  (
	.D(I_hwdata_reg[14]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [14])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_14_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_13_s0  (
	.D(I_hwdata_reg[13]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [13])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_13_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_12_s0  (
	.D(I_hwdata_reg[12]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [12])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_12_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_11_s0  (
	.D(I_hwdata_reg[11]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [11])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_11_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_10_s0  (
	.D(I_hwdata_reg[10]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [10])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_10_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_9_s0  (
	.D(I_hwdata_reg[9]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [9])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_9_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_8_s0  (
	.D(I_hwdata_reg[8]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [8])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_8_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_7_s0  (
	.D(I_hwdata_reg[7]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [7])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_6_s0  (
	.D(I_hwdata_reg[6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [6])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_5_s0  (
	.D(I_hwdata_reg[5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [5])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_4_s0  (
	.D(I_hwdata_reg[4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [4])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_3_s0  (
	.D(I_hwdata_reg[3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [3])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_2_s0  (
	.D(I_hwdata_reg[2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [2])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_1_s0  (
	.D(I_hwdata_reg[1]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [1])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_0_s0  (
	.D(I_hwdata_reg[0]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [0])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_0_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_fifo/tx_dcnt_1_s0  (
	.D(\spiflash_inst/u_spi_fifo/n86_6 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/tx_dcnt [1])
);
defparam \spiflash_inst/u_spi_fifo/tx_dcnt_1_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_fifo/tx_dcnt_0_s0  (
	.D(\spiflash_inst/u_spi_fifo/n87_6 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/tx_dcnt [0])
);
defparam \spiflash_inst/u_spi_fifo/tx_dcnt_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_31_s0  (
	.D(\spiflash_inst/rxf_wr_data [31]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [31])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_31_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_30_s0  (
	.D(\spiflash_inst/rxf_wr_data [30]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [30])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_30_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_29_s0  (
	.D(\spiflash_inst/rxf_wr_data [29]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [29])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_29_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_28_s0  (
	.D(\spiflash_inst/rxf_wr_data [28]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [28])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_28_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_27_s0  (
	.D(\spiflash_inst/rxf_wr_data [27]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [27])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_27_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_26_s0  (
	.D(\spiflash_inst/rxf_wr_data [26]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [26])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_26_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_25_s0  (
	.D(\spiflash_inst/rxf_wr_data [25]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [25])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_25_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_24_s0  (
	.D(\spiflash_inst/rxf_wr_data [24]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [24])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_24_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_23_s0  (
	.D(\spiflash_inst/rxf_wr_data [23]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [23])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_23_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_22_s0  (
	.D(\spiflash_inst/rxf_wr_data [22]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [22])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_22_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_21_s0  (
	.D(\spiflash_inst/rxf_wr_data [21]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [21])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_21_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_20_s0  (
	.D(\spiflash_inst/rxf_wr_data [20]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [20])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_20_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_19_s0  (
	.D(\spiflash_inst/rxf_wr_data [19]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [19])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_19_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_18_s0  (
	.D(\spiflash_inst/rxf_wr_data [18]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [18])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_18_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_17_s0  (
	.D(\spiflash_inst/rxf_wr_data [17]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [17])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_17_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_16_s0  (
	.D(\spiflash_inst/rxf_wr_data [16]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [16])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_16_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_15_s0  (
	.D(\spiflash_inst/rxf_wr_data [15]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [15])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_15_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_14_s0  (
	.D(\spiflash_inst/rxf_wr_data [14]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [14])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_14_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_13_s0  (
	.D(\spiflash_inst/rxf_wr_data [13]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [13])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_13_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_12_s0  (
	.D(\spiflash_inst/rxf_wr_data [12]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [12])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_12_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_11_s0  (
	.D(\spiflash_inst/rxf_wr_data [11]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [11])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_11_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_10_s0  (
	.D(\spiflash_inst/rxf_wr_data [10]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [10])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_10_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_9_s0  (
	.D(\spiflash_inst/rxf_wr_data [9]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [9])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_9_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_8_s0  (
	.D(\spiflash_inst/rxf_wr_data [8]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [8])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_8_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_7_s0  (
	.D(\spiflash_inst/rxf_wr_data [7]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [7])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_7_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_6_s0  (
	.D(\spiflash_inst/rxf_wr_data [6]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [6])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_6_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_5_s0  (
	.D(\spiflash_inst/rxf_wr_data [5]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [5])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_5_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_4_s0  (
	.D(\spiflash_inst/rxf_wr_data [4]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [4])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_4_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_3_s0  (
	.D(\spiflash_inst/rxf_wr_data [3]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [3])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_3_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_2_s0  (
	.D(\spiflash_inst/rxf_wr_data [2]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [2])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_2_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_1_s0  (
	.D(\spiflash_inst/rxf_wr_data [1]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [1])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_1_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rxf_rd_data_0_s0  (
	.D(\spiflash_inst/rxf_wr_data [0]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/rxf_wr ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_rd_data_Z [0])
);
defparam \spiflash_inst/u_spi_fifo/rxf_rd_data_0_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_fifo/rx_dcnt_1_s0  (
	.D(\spiflash_inst/u_spi_fifo/n180_6 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/rx_dcnt [1])
);
defparam \spiflash_inst/u_spi_fifo/rx_dcnt_1_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_fifo/rx_dcnt_0_s0  (
	.D(\spiflash_inst/u_spi_fifo/n181_6 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/rx_dcnt [0])
);
defparam \spiflash_inst/u_spi_fifo/rx_dcnt_0_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/txf_rd_data_31_s0  (
	.D(I_hwdata_reg[31]),
	.CLK(I_hclk),
	.CE(\spiflash_inst/reg_txf_wr_regclk ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_rd_data_Z [31])
);
defparam \spiflash_inst/u_spi_fifo/txf_rd_data_31_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/tx_dflag_s1  (
	.D(\spiflash_inst/reg_txf_wr_regclk ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_fifo/tx_dflag_10 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/tx_dflag )
);
defparam \spiflash_inst/u_spi_fifo/tx_dflag_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_fifo/rx_dflag_s1  (
	.D(\spiflash_inst/rxf_wr ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_fifo/rx_dflag_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_fifo/rx_dflag )
);
defparam \spiflash_inst/u_spi_fifo/rx_dflag_s1 .INIT=1'b0;
DFFP \spiflash_inst/u_spi_fifo/rxf_empty_s5  (
	.D(\spiflash_inst/u_spi_fifo/n188_12 ),
	.CLK(I_hclk),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/reg_rxf_empty )
);
defparam \spiflash_inst/u_spi_fifo/rxf_empty_s5 .INIT=1'b1;
DFFP \spiflash_inst/u_spi_fifo/txf_empty_s5  (
	.D(\spiflash_inst/u_spi_fifo/n94_9 ),
	.CLK(I_hclk),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/txf_empty_Z )
);
defparam \spiflash_inst/u_spi_fifo/txf_empty_s5 .INIT=1'b1;
LUT2 \spiflash_inst/u_spi_sync/n28_s1  (
	.I0(\spiflash_inst/reg_req_regclk ),
	.I1(\spiflash_inst/u_spi_sync/arb_ns ),
	.F(\spiflash_inst/u_spi_sync/n28_6 )
);
defparam \spiflash_inst/u_spi_sync/n28_s1 .INIT=4'h8;
LUT4 \spiflash_inst/u_spi_sync/arb_ns_s1  (
	.I0(\spiflash_inst/arb_busy_sclk_Z ),
	.I1(\spiflash_inst/reg_req_regclk ),
	.I2(\spiflash_inst/u_spi_sync/arb_cs_r ),
	.I3(\spiflash_inst/arb_trans_end_sysclk_Z ),
	.F(\spiflash_inst/u_spi_sync/arb_ns )
);
defparam \spiflash_inst/u_spi_sync/arb_ns_s1 .INIT=16'h00F4;
DFFC \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d2_s0  (
	.D(\spiflash_inst/u_spi_sync/arb_trans_end_sclk_d1 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_sync/arb_trans_end_sclk_d2 )
);
defparam \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d2_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_sync/arb_trans_end_sysclk_s0  (
	.D(\spiflash_inst/u_spi_sync/arb_trans_end_sclk_d2 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/arb_trans_end_sysclk_Z )
);
defparam \spiflash_inst/u_spi_sync/arb_trans_end_sysclk_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_sync/arb_cs_r_s0  (
	.D(\spiflash_inst/u_spi_sync/arb_ns ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_sync/arb_cs_r )
);
defparam \spiflash_inst/u_spi_sync/arb_cs_r_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_sync/arb_req_sysclk_s0  (
	.D(\spiflash_inst/u_spi_sync/n28_6 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/arb_req_sysclk_Z )
);
defparam \spiflash_inst/u_spi_sync/arb_req_sysclk_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d1_s0  (
	.D(\spiflash_inst/arb_trans_end_sclk_Z ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_sync/arb_trans_end_sclk_d1 )
);
defparam \spiflash_inst/u_spi_sync/arb_trans_end_sclk_d1_s0 .INIT=1'b0;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s15  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_64 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s15 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s14  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [2]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_65 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s14 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s17  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [5]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [4]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_66 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s17 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s16  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [7]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [6]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_67 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s16 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s19  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [9]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [8]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_68 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s19 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s18  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [11]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [10]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_69 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s18 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s21  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [13]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [12]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_70 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s21 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s20  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [15]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [14]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_71 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s20 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s23  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [17]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [16]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_72 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s23 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s22  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [19]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [18]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_73 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s22 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s25  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [21]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [20]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_74 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s25 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s24  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [23]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [22]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_75 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s24 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s27  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [25]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [24]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_76 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s27 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s26  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [27]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [26]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_77 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s26 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s29  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [29]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [28]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_78 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s29 .INIT=8'hCA;
LUT3 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s28  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_mux_r [31]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_mux_r [30]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/spi_txdata_79 )
);
defparam \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s28 .INIT=8'hCA;
LUT4 \spiflash_inst/u_spi_ctrl/n206_s0  (
	.I0(\spiflash_inst/spi_cs_r [0]),
	.I1(\spiflash_inst/spi_cs_r [2]),
	.I2(\spiflash_inst/spi_cs_r [1]),
	.I3(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n206_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n206_s0 .INIT=16'hFEFF;
LUT4 \spiflash_inst/u_spi_ctrl/n325_s0  (
	.I0(\spiflash_inst/u_spi_ctrl/n325_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/n325_5 ),
	.I2(\spiflash_inst/u_spi_ctrl/n325_6 ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/n325_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s0 .INIT=16'h0503;
LUT4 \spiflash_inst/u_spi_ctrl/n326_s1  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/n326_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/n325_6 ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/n326_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n326_s1 .INIT=16'h0C05;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s0  (
	.I0(\spiflash_inst/reg_spi_addr [31]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [7]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n524_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n525_s0  (
	.I0(\spiflash_inst/reg_spi_addr [30]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [6]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n525_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n525_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n526_s0  (
	.I0(\spiflash_inst/reg_spi_addr [29]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [5]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n526_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n526_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n527_s0  (
	.I0(\spiflash_inst/reg_spi_addr [28]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [4]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n527_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n527_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n528_s0  (
	.I0(\spiflash_inst/reg_spi_addr [27]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [3]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n528_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n528_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n529_s0  (
	.I0(\spiflash_inst/reg_spi_addr [26]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [2]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n529_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n529_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n530_s0  (
	.I0(\spiflash_inst/reg_spi_addr [25]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [1]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n530_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n530_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n531_s0  (
	.I0(\spiflash_inst/reg_spi_addr [24]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [0]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n531_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n531_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n532_s0  (
	.I0(\spiflash_inst/reg_spi_addr [23]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [15]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n532_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n532_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n533_s0  (
	.I0(\spiflash_inst/reg_spi_addr [22]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [14]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n533_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n533_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n534_s0  (
	.I0(\spiflash_inst/reg_spi_addr [21]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [13]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n534_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n534_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n535_s0  (
	.I0(\spiflash_inst/reg_spi_addr [20]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [12]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n535_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n535_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n536_s0  (
	.I0(\spiflash_inst/reg_spi_addr [19]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [11]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n536_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n536_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n537_s0  (
	.I0(\spiflash_inst/reg_spi_addr [18]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [10]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n537_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n537_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n538_s0  (
	.I0(\spiflash_inst/reg_spi_addr [17]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [9]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n538_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n538_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n539_s0  (
	.I0(\spiflash_inst/reg_spi_addr [16]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [8]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n539_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n539_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n540_s0  (
	.I0(\spiflash_inst/reg_spi_addr [15]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [23]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n540_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n540_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n541_s0  (
	.I0(\spiflash_inst/reg_spi_addr [14]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [22]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n541_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n541_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n542_s0  (
	.I0(\spiflash_inst/reg_spi_addr [13]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [21]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n542_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n542_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n543_s0  (
	.I0(\spiflash_inst/reg_spi_addr [12]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [20]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n543_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n543_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n544_s0  (
	.I0(\spiflash_inst/reg_spi_addr [11]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [19]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n544_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n544_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n545_s0  (
	.I0(\spiflash_inst/reg_spi_addr [10]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [18]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n545_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n545_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n546_s0  (
	.I0(\spiflash_inst/reg_spi_addr [9]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [17]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n546_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n546_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n547_s0  (
	.I0(\spiflash_inst/reg_spi_addr [8]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_4 ),
	.I2(\spiflash_inst/txf_rd_data_Z [16]),
	.I3(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n547_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n547_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n548_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [31]),
	.I2(\spiflash_inst/u_spi_ctrl/n548_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n548_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n548_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n549_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [30]),
	.I2(\spiflash_inst/u_spi_ctrl/n549_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n549_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n549_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n550_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [29]),
	.I2(\spiflash_inst/u_spi_ctrl/n550_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n550_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n550_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n551_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [28]),
	.I2(\spiflash_inst/u_spi_ctrl/n551_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n551_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n551_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n552_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [27]),
	.I2(\spiflash_inst/u_spi_ctrl/n552_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n552_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n552_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n553_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [26]),
	.I2(\spiflash_inst/u_spi_ctrl/n553_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n553_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n553_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n554_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [25]),
	.I2(\spiflash_inst/u_spi_ctrl/n554_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n554_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n554_s0 .INIT=16'hF888;
LUT4 \spiflash_inst/u_spi_ctrl/n555_s0  (
	.I0(\spiflash_inst/n524_5 ),
	.I1(\spiflash_inst/txf_rd_data_Z [24]),
	.I2(\spiflash_inst/u_spi_ctrl/n555_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/n548_5 ),
	.F(\spiflash_inst/u_spi_ctrl/n555_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n555_s0 .INIT=16'hF888;
LUT3 \spiflash_inst/u_spi_ctrl/n845_s0  (
	.I0(\spiflash_inst/u_spi_ctrl/n845_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.F(\spiflash_inst/u_spi_ctrl/n845_3 )
);
defparam \spiflash_inst/u_spi_ctrl/n845_s0 .INIT=8'h40;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s20  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_30 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_31 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_32 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns [3])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s20 .INIT=16'hBF00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s18  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_27 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_28 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_29 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns [2])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s18 .INIT=16'hFFF8;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s18  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_27 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_28 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_29 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_30 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns [1])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s18 .INIT=16'hFF40;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s19  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_28 ),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_29 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_30 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns [0])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s19 .INIT=16'h0B00;
LUT3 \spiflash_inst/u_spi_ctrl/data_cnt_r_3_s3  (
	.I0(\spiflash_inst/ctrl_cs_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/data_cnt_r_3_11 ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/data_cnt_r_3_8 )
);
defparam \spiflash_inst/u_spi_ctrl/data_cnt_r_3_s3 .INIT=8'hF1;
LUT4 \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_9 ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_8 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s3 .INIT=16'hFFE0;
LUT2 \spiflash_inst/u_spi_ctrl/tx_mux_r_31_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I1(\spiflash_inst/n524_5 ),
	.F(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 )
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_31_s3 .INIT=4'hE;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.I2(\spiflash_inst/rxf_wr ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_6 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_s3 .INIT=8'hF8;
LUT3 \spiflash_inst/u_spi_ctrl/arb_req_invalid_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_7 ),
	.I2(\spiflash_inst/arb_req_sysclk_Z ),
	.F(\spiflash_inst/u_spi_ctrl/arb_req_invalid_8 )
);
defparam \spiflash_inst/u_spi_ctrl/arb_req_invalid_s3 .INIT=8'h8F;
LUT3 \spiflash_inst/u_spi_ctrl/n674_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n674_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n674_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n673_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n673_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n673_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n672_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n672_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n672_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n671_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n671_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n671_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n670_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n670_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n670_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n669_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n669_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n669_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n668_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n668_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n668_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n667_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n667_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n667_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n666_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n666_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n666_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n665_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n665_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n665_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n664_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n664_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n664_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n663_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n663_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n663_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n662_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n662_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n662_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n661_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n661_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n661_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n660_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n660_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n660_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n659_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n659_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n659_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n658_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n658_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n658_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n657_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n657_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n657_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n656_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n656_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n656_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n655_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n655_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n655_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n654_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n654_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n654_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n653_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n653_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n653_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n652_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n652_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n652_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n651_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n651_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n651_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n650_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.F(\spiflash_inst/u_spi_ctrl/n650_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n650_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n649_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n649_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n649_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n648_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n648_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n648_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n647_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n647_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n647_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n646_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n646_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n646_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n645_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n645_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n645_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n644_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n644_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n644_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n643_s1  (
	.I0(\spiflash_inst/spi_rxdata ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 ),
	.F(\spiflash_inst/u_spi_ctrl/n643_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n643_s1 .INIT=8'h80;
LUT3 \spiflash_inst/u_spi_ctrl/n360_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/n360_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n360_s2 .INIT=8'h06;
LUT4 \spiflash_inst/u_spi_ctrl/n359_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/n359_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n359_s2 .INIT=16'h0078;
LUT4 \spiflash_inst/u_spi_ctrl/n358_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/n358_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I2(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/n358_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n358_s2 .INIT=16'h001C;
LUT4 \spiflash_inst/u_spi_ctrl/n357_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/n357_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/n845_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/n357_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n357_s2 .INIT=16'h00B4;
LUT3 \spiflash_inst/u_spi_ctrl/n270_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/n270_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n270_s2 .INIT=8'h14;
LUT4 \spiflash_inst/u_spi_ctrl/n269_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/n269_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n269_s2 .INIT=16'h0708;
LUT4 \spiflash_inst/u_spi_ctrl/n268_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/n268_8 ),
	.F(\spiflash_inst/u_spi_ctrl/n268_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n268_s2 .INIT=16'h0230;
LUT2 \spiflash_inst/u_spi_ctrl/n267_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/n267_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/n267_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n267_s2 .INIT=4'h1;
LUT4 \spiflash_inst/u_spi_ctrl/n238_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/n238_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I3(\spiflash_inst/u_spi_ctrl/data_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n238_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n238_s2 .INIT=16'h0007;
LUT4 \spiflash_inst/u_spi_ctrl/n237_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/n238_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/u_spi_ctrl/n237_8 ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/n237_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n237_s2 .INIT=16'h0070;
LUT4 \spiflash_inst/u_spi_ctrl/n295_s2  (
	.I0(\spiflash_inst/spi_ns_2_19 ),
	.I1(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_9 ),
	.I3(\spiflash_inst/spi_txdata_rd_Z ),
	.F(\spiflash_inst/u_spi_ctrl/n295_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n295_s2 .INIT=16'h4114;
LUT2 \spiflash_inst/u_spi_ctrl/n294_s2  (
	.I0(\spiflash_inst/spi_ns_2_19 ),
	.I1(\spiflash_inst/u_spi_ctrl/n325_4 ),
	.F(\spiflash_inst/u_spi_ctrl/n294_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n294_s2 .INIT=4'h1;
LUT4 \spiflash_inst/u_spi_ctrl/tx_ptr_4_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [4]),
	.F(\spiflash_inst/u_spi_ctrl/tx_ptr [4])
);
defparam \spiflash_inst/u_spi_ctrl/tx_ptr_4_s4 .INIT=16'h827D;
LUT2 \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s0  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 )
);
defparam \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s0 .INIT=4'h1;
LUT4 \spiflash_inst/u_spi_ctrl/n325_s1  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_9 ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [1]),
	.I3(\spiflash_inst/spi_txdata_rd_Z ),
	.F(\spiflash_inst/u_spi_ctrl/n325_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s1 .INIT=16'h2D4B;
LUT2 \spiflash_inst/u_spi_ctrl/n325_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/n325_5 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s2 .INIT=4'h6;
LUT4 \spiflash_inst/u_spi_ctrl/n325_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_5 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.I3(\spiflash_inst/u_spi_ctrl/n325_7 ),
	.F(\spiflash_inst/u_spi_ctrl/n325_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s3 .INIT=16'hD700;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s1  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I1(\spiflash_inst/u_spi_ctrl/n524_6 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n524_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s1 .INIT=16'h1000;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I3(\spiflash_inst/u_spi_ctrl/n524_7 ),
	.F(\spiflash_inst/n524_5 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s2 .INIT=16'h1400;
LUT3 \spiflash_inst/u_spi_ctrl/n548_s1  (
	.I0(\spiflash_inst/reg_spi_addr [7]),
	.I1(\spiflash_inst/reg_opcode [7]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n548_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n548_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n548_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.F(\spiflash_inst/u_spi_ctrl/n548_5 )
);
defparam \spiflash_inst/u_spi_ctrl/n548_s2 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_ctrl/n549_s1  (
	.I0(\spiflash_inst/reg_spi_addr [6]),
	.I1(\spiflash_inst/reg_opcode [6]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n549_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n549_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n550_s1  (
	.I0(\spiflash_inst/reg_spi_addr [5]),
	.I1(\spiflash_inst/reg_opcode [5]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n550_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n550_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n551_s1  (
	.I0(\spiflash_inst/reg_spi_addr [4]),
	.I1(\spiflash_inst/reg_opcode [4]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n551_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n551_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n552_s1  (
	.I0(\spiflash_inst/reg_spi_addr [3]),
	.I1(\spiflash_inst/reg_opcode [3]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n552_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n552_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n553_s1  (
	.I0(\spiflash_inst/reg_spi_addr [2]),
	.I1(\spiflash_inst/reg_opcode [2]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n553_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n553_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n554_s1  (
	.I0(\spiflash_inst/reg_spi_addr [1]),
	.I1(\spiflash_inst/reg_opcode [1]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n554_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n554_s1 .INIT=8'hAC;
LUT3 \spiflash_inst/u_spi_ctrl/n555_s1  (
	.I0(\spiflash_inst/reg_spi_addr [0]),
	.I1(\spiflash_inst/reg_opcode [0]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/n555_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n555_s1 .INIT=8'hAC;
LUT4 \spiflash_inst/u_spi_ctrl/n845_s1  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n845_4 )
);
defparam \spiflash_inst/u_spi_ctrl/n845_s1 .INIT=16'h7077;
LUT3 \spiflash_inst/u_spi_ctrl/n845_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/n845_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n845_s3 .INIT=8'h80;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s21  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_33 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_34 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s21 .INIT=16'h00F4;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s22  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_30 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s22 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s23  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_36 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_37 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_38 ),
	.I3(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_31 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s23 .INIT=16'h0040;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s24  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_39 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_44 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_32 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s24 .INIT=16'hEEE0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s19  (
	.I0(\spiflash_inst/rxf_wr ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_30 ),
	.I2(\spiflash_inst/ctrl_ns_2_31 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_27 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s19 .INIT=16'h0FBB;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s20  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_57 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_33 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_34 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_29 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_28 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s20 .INIT=16'hF100;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s21  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_35 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_53 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_37 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_29 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s21 .INIT=16'hE000;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s19  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_31 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_33 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_32 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_33 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_27 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s19 .INIT=16'hF400;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s20  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_34 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_35 ),
	.I2(\spiflash_inst/ctrl_cs_r [2]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_36 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_28 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s20 .INIT=16'h00BF;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s21  (
	.I0(\spiflash_inst/rxf_wr ),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_30 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_29 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s21 .INIT=16'h00BF;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s22  (
	.I0(\spiflash_inst/u_spi_ctrl/n524_6 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_35 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_49 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_30 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s22 .INIT=16'h0E00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s20  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_31 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_46 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_33 ),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_28 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s20 .INIT=16'hEEF0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s21  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_30 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_35 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_34 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_29 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s21 .INIT=16'h4F00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s22  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_35 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_31 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_36 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_44 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_30 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s22 .INIT=16'h0BBB;
LUT2 \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s4  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.F(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_9 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s4 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s4  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_10 ),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_11 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s4 .INIT=16'h07F8;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s4 .INIT=8'h01;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s5  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_12 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_10 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/n845_8 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_8 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s5 .INIT=16'hCA00;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s4 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s4 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s4 .INIT=8'h40;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s4 .INIT=8'h10;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s4 .INIT=8'h40;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s4 .INIT=8'h40;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_12 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/n845_8 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s4 .INIT=16'hCA00;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_10 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/n845_8 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s4 .INIT=16'hCA00;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_10 ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_10 ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/n845_8 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_7 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s4 .INIT=16'hCA00;
LUT2 \spiflash_inst/u_spi_ctrl/n358_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n358_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n358_s3 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/n357_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n357_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n357_s3 .INIT=16'h3533;
LUT3 \spiflash_inst/u_spi_ctrl/n268_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/n268_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n268_s3 .INIT=8'h80;
LUT4 \spiflash_inst/u_spi_ctrl/n267_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/n268_8 ),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [4]),
	.F(\spiflash_inst/u_spi_ctrl/n267_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n267_s3 .INIT=16'h8A7F;
LUT2 \spiflash_inst/u_spi_ctrl/n238_s3  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/n238_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n238_s3 .INIT=4'h1;
LUT2 \spiflash_inst/u_spi_ctrl/n237_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/data_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/data_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/n237_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n237_s3 .INIT=4'h6;
LUT3 \spiflash_inst/u_spi_ctrl/tx_ptr_3_s7  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 )
);
defparam \spiflash_inst/u_spi_ctrl/tx_ptr_3_s7 .INIT=8'h10;
LUT2 \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_5 )
);
defparam \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s2 .INIT=4'h1;
LUT4 \spiflash_inst/u_spi_ctrl/n325_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/n325_8 ),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [2]),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/n325_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s4 .INIT=16'hD700;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s3  (
	.I0(\spiflash_inst/ctrl_ns_2_31 ),
	.I1(\spiflash_inst/u_spi_ctrl/n524_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/n524_9 ),
	.I3(\spiflash_inst/ctrl_cs_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/n524_6 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s3 .INIT=16'hF431;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_ready_11 ),
	.I1(\spiflash_inst/tx_ready ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.I3(\spiflash_inst/txf_empty_Z ),
	.F(\spiflash_inst/u_spi_ctrl/n524_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s4 .INIT=16'h000B;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s25  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ),
	.I1(\spiflash_inst/u_spi_ctrl/n238_8 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_41 ),
	.I3(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_33 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s25 .INIT=16'h0305;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s26  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_42 ),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_35 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_34 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s26 .INIT=16'hEC0C;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s27  (
	.I0(\spiflash_inst/spi_cs_r [2]),
	.I1(\spiflash_inst/spi_cs_r [0]),
	.I2(\spiflash_inst/spi_cs_r [1]),
	.I3(\spiflash_inst/u_spi_ctrl/n268_8 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s27 .INIT=16'h1C00;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s28  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/reg_trans_ctrl [29]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_36 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s28 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s29  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [27]),
	.I2(\spiflash_inst/reg_trans_ctrl [25]),
	.I3(\spiflash_inst/reg_trans_ctrl [26]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_37 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s29 .INIT=16'h133F;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s30  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_38 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s30 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s31  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_37 ),
	.I1(\spiflash_inst/u_spi_ctrl/n524_9 ),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_38 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_39 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s31 .INIT=16'h7077;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s22  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_30 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s22 .INIT=4'h8;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s23  (
	.I0(\spiflash_inst/u_spi_ctrl/arb_req_invalid ),
	.I1(\spiflash_inst/arb_req_sysclk_Z ),
	.F(\spiflash_inst/ctrl_ns_2_31 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s23 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s25  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_39 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_55 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_33 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s25 .INIT=16'h007F;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s26  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_41 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_51 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_34 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s26 .INIT=16'h4000;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s27  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_34 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_49 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I3(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_35 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s27 .INIT=16'h80C0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s29  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [25]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/reg_trans_ctrl [27]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_37 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s29 .INIT=16'h0001;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s23  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_47 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_39 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_31 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s23 .INIT=16'h0040;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s24  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_40 ),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_41 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_42 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_32 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s24 .INIT=16'h000B;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s25  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_43 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.I3(\spiflash_inst/ctrl_cs_r [2]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_33 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s25 .INIT=16'h004F;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s26  (
	.I0(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_34 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s26 .INIT=8'h0B;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s27  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_35 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s27 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s28  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_41 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_51 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_36 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s28 .INIT=16'hBF00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s23  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_38 ),
	.I1(\spiflash_inst/reg_trans_ctrl [29]),
	.I2(\spiflash_inst/reg_trans_ctrl [30]),
	.I3(\spiflash_inst/ctrl_ns_2_31 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_31 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s23 .INIT=16'h0D00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s25  (
	.I0(\spiflash_inst/rxf_wr ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_34 ),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.I3(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_33 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s25 .INIT=16'hAFC0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s26  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_30 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_39 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_40 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_38 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_34 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s26 .INIT=16'h0D00;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s27  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_41 ),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_35 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s27 .INIT=8'hD0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s28  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_39 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_31 ),
	.I3(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_36 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s28 .INIT=16'h770F;
LUT4 \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s5  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.I3(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_10 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s5 .INIT=16'h0100;
LUT2 \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s6  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_11 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s6 .INIT=4'h1;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s7  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_10 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s7 .INIT=8'h90;
LUT3 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s5  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_ptr_3_16 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_8 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s5 .INIT=8'h60;
LUT2 \spiflash_inst/u_spi_ctrl/n325_s5  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/n325_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n325_s5 .INIT=4'h1;
LUT3 \spiflash_inst/u_spi_ctrl/n524_s5  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/n524_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s5 .INIT=8'hD3;
LUT4 \spiflash_inst/u_spi_ctrl/n524_s6  (
	.I0(\spiflash_inst/u_spi_ctrl/arb_req_invalid ),
	.I1(\spiflash_inst/reg_trans_ctrl [30]),
	.I2(\spiflash_inst/reg_trans_ctrl [29]),
	.I3(\spiflash_inst/arb_req_sysclk_Z ),
	.F(\spiflash_inst/u_spi_ctrl/n524_9 )
);
defparam \spiflash_inst/u_spi_ctrl/n524_s6 .INIT=16'h0100;
LUT2 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s33  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [4]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_41 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s33 .INIT=4'h8;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s34  (
	.I0(\spiflash_inst/ctrl_cs_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [4]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_42 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s34 .INIT=8'h60;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s31  (
	.I0(\spiflash_inst/u_spi_ctrl/data_cnt_r [0]),
	.I1(\spiflash_inst/reg_trans_ctrl [0]),
	.I2(\spiflash_inst/u_spi_ctrl/data_cnt_r [1]),
	.I3(\spiflash_inst/reg_trans_ctrl [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_39 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s31 .INIT=16'h9009;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s33  (
	.I0(\spiflash_inst/u_spi_ctrl/data_cnt_r [0]),
	.I1(\spiflash_inst/reg_trans_ctrl [12]),
	.I2(\spiflash_inst/u_spi_ctrl/data_cnt_r [1]),
	.I3(\spiflash_inst/reg_trans_ctrl [13]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_41 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s33 .INIT=16'h9009;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s31  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_41 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_45 ),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.I3(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_39 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s31 .INIT=16'h305F;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s32  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [25]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/reg_trans_ctrl [27]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_40 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s32 .INIT=16'h002B;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s33  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_44 ),
	.I1(\spiflash_inst/reg_trans_ctrl [25]),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_10 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_41 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s33 .INIT=8'hD0;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s34  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_45 ),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.I2(\spiflash_inst/reg_trans_ctrl [24]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_42 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s34 .INIT=8'h40;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s35  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_39 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_45 ),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_43 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s35 .INIT=8'h35;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s30  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [25]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/reg_trans_ctrl [27]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_38 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s30 .INIT=16'hFCD5;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s31  (
	.I0(\spiflash_inst/reg_trans_ctrl [29]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_38 ),
	.I2(\spiflash_inst/reg_trans_ctrl [30]),
	.I3(\spiflash_inst/ctrl_ns_2_31 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_39 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s31 .INIT=16'hF400;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s32  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_38 ),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_36 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_42 ),
	.I3(\spiflash_inst/u_spi_ctrl/n268_8 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_40 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s32 .INIT=16'hD000;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s33  (
	.I0(\spiflash_inst/reg_trans_ctrl [26]),
	.I1(\spiflash_inst/reg_trans_ctrl [27]),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.I3(\spiflash_inst/reg_trans_ctrl [25]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_41 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s33 .INIT=16'hFE9F;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s36  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [27]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_44 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s36 .INIT=8'h10;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s37  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/reg_trans_ctrl [26]),
	.I2(\spiflash_inst/reg_trans_ctrl [27]),
	.I3(\spiflash_inst/reg_trans_ctrl [25]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_45 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s37 .INIT=16'hFED3;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s37  (
	.I0(\spiflash_inst/u_spi_ctrl/data_cnt_r [0]),
	.I1(\spiflash_inst/reg_trans_ctrl [9]),
	.I2(\spiflash_inst/u_spi_ctrl/data_cnt_r [1]),
	.I3(\spiflash_inst/reg_trans_ctrl [10]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_45 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s37 .INIT=16'h9009;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s34  (
	.I0(\spiflash_inst/spi_cs_r [2]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/spi_cs_r [0]),
	.I3(\spiflash_inst/spi_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_42 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s34 .INIT=16'h0130;
LUT4 \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.F(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_7 )
);
defparam \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s3 .INIT=16'h0001;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s35  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_44 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s35 .INIT=8'h01;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s38  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [27]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/u_spi_ctrl/n238_8 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_47 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s38 .INIT=16'hEF00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s38  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/reg_trans_ctrl [27]),
	.I2(\spiflash_inst/reg_trans_ctrl [26]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_10 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_47 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s38 .INIT=16'hEF00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s39  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.I3(\spiflash_inst/reg_trans_ctrl [29]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_49 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s39 .INIT=16'h1011;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s40  (
	.I0(\spiflash_inst/reg_trans_ctrl [24]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_45 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_51 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s40 .INIT=16'h3010;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s41  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [2]),
	.I3(\spiflash_inst/u_spi_ctrl/n524_9 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_53 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s41 .INIT=16'hF800;
LUT4 \spiflash_inst/u_spi_ctrl/tx_ready_s5  (
	.I0(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_29 ),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.I3(\spiflash_inst/spi_txdata_rd_Z_3 ),
	.F(\spiflash_inst/u_spi_ctrl/tx_ready_11 )
);
defparam \spiflash_inst/u_spi_ctrl/tx_ready_s5 .INIT=16'h0010;
LUT4 \spiflash_inst/u_spi_ctrl/data_cnt_r_3_s5  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_35 ),
	.F(\spiflash_inst/u_spi_ctrl/data_cnt_r_3_11 )
);
defparam \spiflash_inst/u_spi_ctrl/data_cnt_r_3_s5 .INIT=16'hB2BB;
LUT3 \spiflash_inst/u_spi_ctrl/n845_s4  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/n845_8 )
);
defparam \spiflash_inst/u_spi_ctrl/n845_s4 .INIT=8'h04;
LUT4 \spiflash_inst/u_spi_ctrl/n326_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [0]),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I2(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.I3(\spiflash_inst/spi_txdata_rd_Z ),
	.F(\spiflash_inst/u_spi_ctrl/n326_7 )
);
defparam \spiflash_inst/u_spi_ctrl/n326_s3 .INIT=16'h659A;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s36  (
	.I0(\spiflash_inst/u_spi_ctrl/arb_req_invalid ),
	.I1(\spiflash_inst/arb_req_sysclk_Z ),
	.I2(\spiflash_inst/ctrl_cs_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_0_46 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_0_s36 .INIT=8'hB0;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s39  (
	.I0(\spiflash_inst/u_spi_ctrl/arb_req_invalid ),
	.I1(\spiflash_inst/arb_req_sysclk_Z ),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_40 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_49 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s39 .INIT=16'h4F00;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s35  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_3 ),
	.I2(\spiflash_inst/u_spi_ctrl/arb_req_invalid ),
	.I3(\spiflash_inst/arb_req_sysclk_Z ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_3_44 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_3_s35 .INIT=16'h0400;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s6  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_10 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s6 .INIT=16'hEF00;
LUT4 \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s8  (
	.I0(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [2]),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_12 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s8 .INIT=16'h5455;
LUT4 \spiflash_inst/u_spi_ctrl/tx_ptr_3_s8  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [2]),
	.I3(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_ctrl/tx_ptr_3_18 )
);
defparam \spiflash_inst/u_spi_ctrl/tx_ptr_3_s8 .INIT=16'hA9AA;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s40  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/ctrl_cs_r [0]),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_1_51 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_1_s40 .INIT=8'h02;
LUT3 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s42  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/n524_9 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_55 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s42 .INIT=8'h10;
LUT4 \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s43  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_37 ),
	.I3(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_47 ),
	.F(\spiflash_inst/u_spi_ctrl/ctrl_ns_2_57 )
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_ns_2_s43 .INIT=16'h00EF;
LUT3 \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s4  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_7 ),
	.F(\spiflash_inst/arb_trans_end_sclk_Z )
);
defparam \spiflash_inst/u_spi_ctrl/arb_trans_end_sclk_Z_s4 .INIT=8'hE0;
LUT4 \spiflash_inst/u_spi_ctrl/n271_s4  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_3 ),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.I3(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n271_10 )
);
defparam \spiflash_inst/u_spi_ctrl/n271_s4 .INIT=16'h0E01;
LUT3 \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_s5  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_3 ),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I2(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.F(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 )
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_s5 .INIT=8'hF1;
LUT4 \spiflash_inst/u_spi_ctrl/n361_s4  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.I3(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0]),
	.F(\spiflash_inst/u_spi_ctrl/n361_10 )
);
defparam \spiflash_inst/u_spi_ctrl/n361_s4 .INIT=16'h0B04;
LUT3 \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s8  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/master_rxdata_wr_lvl_r ),
	.I2(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_9 ),
	.F(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 )
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s8 .INIT=8'hF4;
LUT4 \spiflash_inst/u_spi_ctrl/n444_s6  (
	.I0(\spiflash_inst/u_spi_ctrl/tx_ready_11 ),
	.I1(\spiflash_inst/tx_ready ),
	.I2(\spiflash_inst/n524_5 ),
	.I3(\spiflash_inst/spi_ns_2_19 ),
	.F(\spiflash_inst/u_spi_ctrl/n444_12 )
);
defparam \spiflash_inst/u_spi_ctrl/n444_s6 .INIT=16'h00F4;
DFFC \spiflash_inst/u_spi_ctrl/ctrl_cs_r_3_s0  (
	.D(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/ctrl_cs_r [3])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_cs_r_3_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/ctrl_cs_r_2_s0  (
	.D(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/ctrl_cs_r [2])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_cs_r_2_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/ctrl_cs_r_1_s0  (
	.D(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/ctrl_cs_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_cs_r_1_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/ctrl_cs_r_0_s0  (
	.D(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/ctrl_cs_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/ctrl_cs_r_0_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/arb_busy_sclk_s0  (
	.D(\spiflash_inst/u_spi_ctrl/n206_3 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/arb_busy_sclk_Z )
);
defparam \spiflash_inst/u_spi_ctrl/arb_busy_sclk_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r_1_s0  (
	.D(\spiflash_inst/u_spi_ctrl/n294_7 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r_1_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r_0_s0  (
	.D(\spiflash_inst/u_spi_ctrl/n295_7 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/tx_rx_diff_cnt_r_0_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/rx_shift_reg_full_r_s0  (
	.D(\spiflash_inst/u_spi_ctrl/n845_3 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr )
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_full_r_s0 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/data_cnt_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n237_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/data_cnt_r_3_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/data_cnt_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/data_cnt_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/data_cnt_r_0_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n238_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/data_cnt_r_3_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/data_cnt_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/data_cnt_r_0_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n267_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [4])
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_3_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n268_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [3])
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_3_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_2_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n269_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2])
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_2_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n270_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_4_12 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n325_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_0_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n326_4 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_1_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_mask_cnt_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/rx_mask_cnt_r_0_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n357_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [4])
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_3_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n358_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [3])
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_3_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_2_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n359_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [2])
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_2_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n360_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_4_15 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_31_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n524_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [31])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_31_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_30_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n525_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [30])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_30_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_29_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n526_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [29])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_29_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_28_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n527_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [28])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_28_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_27_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n528_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [27])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_27_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_26_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n529_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [26])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_26_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_25_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n530_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [25])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_25_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_24_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n531_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [24])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_24_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_23_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n532_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [23])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_23_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_22_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n533_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [22])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_22_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_21_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n534_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [21])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_21_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_20_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n535_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [20])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_20_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_19_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n536_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [19])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_19_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_18_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n537_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [18])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_18_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_17_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n538_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [17])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_17_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_16_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n539_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [16])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_16_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_15_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n540_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [15])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_15_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_14_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n541_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [14])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_14_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_13_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n542_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [13])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_13_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_12_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n543_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [12])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_12_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_11_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n544_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [11])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_11_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_10_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n545_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [10])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_10_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_9_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n546_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [9])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_9_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_8_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n547_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [8])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_8_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_7_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n548_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [7])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_7_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_6_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n549_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [6])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_6_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_5_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n550_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [5])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_5_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_4_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n551_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [4])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_4_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_3_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n552_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [3])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_3_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_2_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n553_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [2])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_2_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n554_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [1])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/tx_mux_r_0_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n555_3 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/tx_mux_r_31_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_mux_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/tx_mux_r_0_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n643_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [7])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_31_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n644_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [6])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_30_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n645_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [5])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_29_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n646_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [4])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_28_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n647_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [3])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_27_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n648_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [2])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_26_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n649_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [1])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_25_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n650_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [0])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_24_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n651_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [15])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_23_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n652_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [14])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_22_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n653_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [13])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_21_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n654_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [12])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_20_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n655_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [11])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_19_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n656_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [10])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_18_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n657_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [9])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_17_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n658_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [8])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_16_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n659_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [23])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_15_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n660_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [22])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_14_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n661_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [21])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_13_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n662_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [20])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_12_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n663_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [19])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_11_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n664_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [18])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_10_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n665_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [17])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_9_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n666_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [16])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_8_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n667_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [31])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_7_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n668_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [30])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_6_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n669_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [29])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_5_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n670_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [28])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_4_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n671_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [27])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_3_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n672_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [26])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_2_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n673_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [25])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_s1  (
	.D(\spiflash_inst/u_spi_ctrl/n674_6 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/rxf_wr_data [24])
);
defparam \spiflash_inst/u_spi_ctrl/rx_shift_reg_r_0_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_ctrl/arb_req_invalid_s1  (
	.D(\spiflash_inst/arb_req_sysclk_Z ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_ctrl/arb_req_invalid_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/arb_req_invalid )
);
defparam \spiflash_inst/u_spi_ctrl/arb_req_invalid_s1 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_0_s3  (
	.D(\spiflash_inst/u_spi_ctrl/n271_10 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/tx_bit_cnt_r_0_s3 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_0_s3  (
	.D(\spiflash_inst/u_spi_ctrl/n361_10 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_ctrl/rx_bit_cnt_r [0])
);
defparam \spiflash_inst/u_spi_ctrl/rx_bit_cnt_r_0_s3 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_ctrl/tx_ready_s6  (
	.D(\spiflash_inst/u_spi_ctrl/n444_12 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/tx_ready )
);
defparam \spiflash_inst/u_spi_ctrl/tx_ready_s6 .INIT=1'b0;
ALU \spiflash_inst/u_spi_ctrl/n10_s0  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [0]),
	.I3(GND),
	.CIN(GND),
	.COUT(\spiflash_inst/u_spi_ctrl/n10_3 ),
	.SUM(\spiflash_inst/u_spi_ctrl/n10_1_SUM )
);
defparam \spiflash_inst/u_spi_ctrl/n10_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_ctrl/n11_s0  (
	.I0(\spiflash_inst/ctrl_cs_r [1]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [1]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_ctrl/n10_3 ),
	.COUT(\spiflash_inst/u_spi_ctrl/n11_3 ),
	.SUM(\spiflash_inst/u_spi_ctrl/n11_1_SUM )
);
defparam \spiflash_inst/u_spi_ctrl/n11_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_ctrl/n12_s0  (
	.I0(\spiflash_inst/ctrl_cs_r [2]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [2]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_ctrl/n11_3 ),
	.COUT(\spiflash_inst/u_spi_ctrl/n12_3 ),
	.SUM(\spiflash_inst/u_spi_ctrl/n12_1_SUM )
);
defparam \spiflash_inst/u_spi_ctrl/n12_s0 .ALU_MODE=3;
ALU \spiflash_inst/u_spi_ctrl/n13_s0  (
	.I0(\spiflash_inst/ctrl_cs_r [3]),
	.I1(\spiflash_inst/u_spi_ctrl/ctrl_ns [3]),
	.I3(GND),
	.CIN(\spiflash_inst/u_spi_ctrl/n12_3 ),
	.COUT(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_clr ),
	.SUM(\spiflash_inst/u_spi_ctrl/n13_1_SUM )
);
defparam \spiflash_inst/u_spi_ctrl/n13_s0 .ALU_MODE=3;
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s7  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_65 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_64 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_81 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s6  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_67 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_66 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_83 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s9  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_69 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_68 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_85 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s8  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_71 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_70 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_87 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s11  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_73 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_72 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_89 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s10  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_75 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_74 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_91 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s13  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_77 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_76 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_93 )
);
MUX2_LUT5 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s12  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_79 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_78 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [1]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_95 )
);
MUX2_LUT6 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s3  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_83 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_81 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_97 )
);
MUX2_LUT6 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s2  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_87 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_85 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_99 )
);
MUX2_LUT6 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s5  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_91 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_89 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_101 )
);
MUX2_LUT6 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s4  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_95 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_93 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_bit_cnt_r [2]),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_103 )
);
MUX2_LUT7 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s0  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_99 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_97 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_ptr_3_18 ),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_105 )
);
MUX2_LUT7 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s1  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_103 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_101 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_ptr_3_18 ),
	.O(\spiflash_inst/u_spi_ctrl/spi_txdata_107 )
);
MUX2_LUT8 \spiflash_inst/u_spi_ctrl/spi_txdata_Z_s  (
	.I0(\spiflash_inst/u_spi_ctrl/spi_txdata_105 ),
	.I1(\spiflash_inst/u_spi_ctrl/spi_txdata_107 ),
	.S0(\spiflash_inst/u_spi_ctrl/tx_ptr [4]),
	.O(\spiflash_inst/spi_txdata_Z )
);
LUT2 \spiflash_inst/u_spi_spiif/n118_s0  (
	.I0(\spiflash_inst/u_spi_spiif/spi_ns [0]),
	.I1(\spiflash_inst/u_spi_spiif/spi_ns [1]),
	.F(\spiflash_inst/u_spi_spiif/n118_3 )
);
defparam \spiflash_inst/u_spi_spiif/n118_s0 .INIT=4'h1;
LUT2 \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_3 ),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.F(\spiflash_inst/spi_txdata_rd_Z )
);
defparam \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s .INIT=4'h1;
LUT2 \spiflash_inst/u_spi_spiif/spi_ns_2_s10  (
	.I0(\spiflash_inst/spi_ns_2_19 ),
	.I1(\spiflash_inst/u_spi_spiif/spi_ns_2_20 ),
	.F(\spiflash_inst/u_spi_spiif/spi_ns [2])
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_2_s10 .INIT=4'h4;
LUT4 \spiflash_inst/u_spi_spiif/spi_ns_1_s9  (
	.I0(\spiflash_inst/u_spi_spiif/spi_ns_1_18 ),
	.I1(\spiflash_inst/spi_cs_r [0]),
	.I2(\spiflash_inst/spi_cs_r [1]),
	.I3(\spiflash_inst/u_spi_spiif/spi_ns_1_19 ),
	.F(\spiflash_inst/u_spi_spiif/spi_ns [1])
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_1_s9 .INIT=16'h44F0;
LUT4 \spiflash_inst/u_spi_spiif/spi_ns_0_s9  (
	.I0(\spiflash_inst/u_spi_spiif/spi_ns_0_16 ),
	.I1(\spiflash_inst/spi_cs_r [1]),
	.I2(\spiflash_inst/spi_cs_r [2]),
	.I3(\spiflash_inst/spi_cs_r [0]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns [0])
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_0_s9 .INIT=16'hE30A;
LUT4 \spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_s3  (
	.I0(\spiflash_inst/spi_cs_r [2]),
	.I1(\spiflash_inst/spi_cs_r [1]),
	.I2(\spiflash_inst/spi_cs_r [0]),
	.I3(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.F(\spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_8 )
);
defparam \spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_s3 .INIT=16'h01FF;
LUT3 \spiflash_inst/u_spi_spiif/n127_s2  (
	.I0(\spiflash_inst/spi_cs_r [1]),
	.I1(\spiflash_inst/spi_cs_r [2]),
	.I2(\spiflash_inst/spi_cs_r [0]),
	.F(\spiflash_inst/u_spi_spiif/n127_7 )
);
defparam \spiflash_inst/u_spi_spiif/n127_s2 .INIT=8'h40;
LUT4 \spiflash_inst/u_spi_spiif/n70_s2  (
	.I0(\spiflash_inst/u_spi_spiif/clock_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r [2]),
	.I3(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_9 ),
	.F(\spiflash_inst/u_spi_spiif/n70_7 )
);
defparam \spiflash_inst/u_spi_spiif/n70_s2 .INIT=16'h7800;
LUT4 \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s0  (
	.I0(\spiflash_inst/spi_cs_r [2]),
	.I1(\spiflash_inst/u_spi_spiif/spi_ns_1_18 ),
	.I2(\spiflash_inst/spi_cs_r [0]),
	.I3(\spiflash_inst/spi_cs_r [1]),
	.F(\spiflash_inst/spi_txdata_rd_Z_3 )
);
defparam \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s0 .INIT=16'hFB2F;
LUT4 \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s1  (
	.I0(\spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_5 ),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.I3(\spiflash_inst/tx_ready ),
	.F(\spiflash_inst/spi_txdata_rd_Z_4 )
);
defparam \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s1 .INIT=16'h0002;
LUT4 \spiflash_inst/u_spi_spiif/spi_ns_2_s11  (
	.I0(\spiflash_inst/u_spi_spiif/spi_ns_2_21 ),
	.I1(\spiflash_inst/spi_cs_r [0]),
	.I2(\spiflash_inst/spi_cs_r [1]),
	.I3(\spiflash_inst/spi_cs_r [2]),
	.F(\spiflash_inst/spi_ns_2_19 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_2_s11 .INIT=16'h0100;
LUT4 \spiflash_inst/u_spi_spiif/spi_ns_2_s12  (
	.I0(\spiflash_inst/u_spi_spiif/spi_ns_2_22 ),
	.I1(\spiflash_inst/spi_cs_r [2]),
	.I2(\spiflash_inst/spi_cs_r [1]),
	.I3(\spiflash_inst/u_spi_spiif/spi_ns_1_18 ),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_2_20 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_2_s12 .INIT=16'h4DDD;
LUT4 \spiflash_inst/u_spi_spiif/spi_ns_1_s10  (
	.I0(\spiflash_inst/ctrl_ns_2_31 ),
	.I1(\spiflash_inst/u_spi_spiif/spi_ns_1_20 ),
	.I2(\spiflash_inst/ctrl_cs_r [1]),
	.I3(\spiflash_inst/ctrl_cs_r [2]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_1_18 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_1_s10 .INIT=16'h0CCB;
LUT3 \spiflash_inst/u_spi_spiif/spi_ns_1_s11  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/spi_cs_r [0]),
	.I2(\spiflash_inst/spi_cs_r [2]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_1_19 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_1_s11 .INIT=8'hD0;
LUT3 \spiflash_inst/u_spi_spiif/spi_ns_0_s10  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/spi_cs_r [1]),
	.I2(\spiflash_inst/u_spi_spiif/spi_ns_1_18 ),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_0_16 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_0_s10 .INIT=8'h70;
LUT2 \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s4  (
	.I0(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ),
	.I1(\spiflash_inst/spi_ns_2_19 ),
	.F(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_9 )
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s4 .INIT=4'h1;
LUT3 \spiflash_inst/u_spi_spiif/n69_s3  (
	.I0(\spiflash_inst/u_spi_spiif/clock_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r [2]),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r [0]),
	.F(\spiflash_inst/u_spi_spiif/n69_8 )
);
defparam \spiflash_inst/u_spi_spiif/n69_s3 .INIT=8'h80;
LUT2 \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s2  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [2]),
	.F(\spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_5 )
);
defparam \spiflash_inst/u_spi_spiif/spi_txdata_rd_Z_s2 .INIT=4'h6;
LUT3 \spiflash_inst/u_spi_spiif/spi_ns_2_s13  (
	.I0(\spiflash_inst/u_spi_spiif/clock_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r [2]),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r [3]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_2_21 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_2_s13 .INIT=8'h01;
LUT3 \spiflash_inst/u_spi_spiif/spi_ns_2_s14  (
	.I0(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I1(\spiflash_inst/spi_cs_r [1]),
	.I2(\spiflash_inst/spi_cs_r [0]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_2_22 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_2_s14 .INIT=8'hE3;
LUT3 \spiflash_inst/u_spi_spiif/spi_ns_1_s12  (
	.I0(\spiflash_inst/ctrl_cs_r [0]),
	.I1(\spiflash_inst/ctrl_cs_r [1]),
	.I2(\spiflash_inst/ctrl_cs_r [3]),
	.F(\spiflash_inst/u_spi_spiif/spi_ns_1_20 )
);
defparam \spiflash_inst/u_spi_spiif/spi_ns_1_s12 .INIT=8'h0D;
LUT4 \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s5  (
	.I0(\spiflash_inst/spi_cs_r [1]),
	.I1(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.I2(\spiflash_inst/spi_cs_r [2]),
	.I3(\spiflash_inst/spi_cs_r [0]),
	.F(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 )
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s5 .INIT=16'hFB2F;
LUT4 \spiflash_inst/u_spi_spiif/n69_s4  (
	.I0(\spiflash_inst/u_spi_spiif/n69_8 ),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r [3]),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ),
	.I3(\spiflash_inst/spi_ns_2_19 ),
	.F(\spiflash_inst/u_spi_spiif/n69_10 )
);
defparam \spiflash_inst/u_spi_spiif/n69_s4 .INIT=16'h0006;
LUT4 \spiflash_inst/u_spi_spiif/n71_s3  (
	.I0(\spiflash_inst/u_spi_spiif/clock_cnt_r [1]),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r [0]),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ),
	.I3(\spiflash_inst/spi_ns_2_19 ),
	.F(\spiflash_inst/u_spi_spiif/n71_9 )
);
defparam \spiflash_inst/u_spi_spiif/n71_s3 .INIT=16'h0006;
LUT3 \spiflash_inst/u_spi_spiif/master_clk_en_s2  (
	.I0(\spiflash_inst/spi_cs_r [0]),
	.I1(\spiflash_inst/spi_txdata_rd_Z_3 ),
	.I2(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.F(\spiflash_inst/u_spi_spiif/master_clk_en )
);
defparam \spiflash_inst/u_spi_spiif/master_clk_en_s2 .INIT=8'h02;
LUT4 \spiflash_inst/u_spi_spiif/n72_s5  (
	.I0(\spiflash_inst/spi_ns_2_19 ),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ),
	.I2(\spiflash_inst/u_spi_spiif/clock_cnt_r [0]),
	.I3(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.F(\spiflash_inst/u_spi_spiif/n72_12 )
);
defparam \spiflash_inst/u_spi_spiif/n72_s5 .INIT=16'h1001;
LUT3 \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s7  (
	.I0(\spiflash_inst/spi_ns_2_19 ),
	.I1(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_10 ),
	.I2(\spiflash_inst/spi_txdata_rd_Z_4 ),
	.F(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_14 )
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s7 .INIT=8'hEF;
DFFC \spiflash_inst/u_spi_spiif/spi_cs_r_1_s0  (
	.D(\spiflash_inst/u_spi_spiif/spi_ns [1]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/spi_cs_r [1])
);
defparam \spiflash_inst/u_spi_spiif/spi_cs_r_1_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_spiif/spi_cs_r_0_s0  (
	.D(\spiflash_inst/u_spi_spiif/spi_ns [0]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/spi_cs_r [0])
);
defparam \spiflash_inst/u_spi_spiif/spi_cs_r_0_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_spiif/master_clk_d_en_r_s0  (
	.D(\spiflash_inst/u_spi_spiif/master_clk_en ),
	.CLK(\spiflash_inst/u_spi_spiif/spi_clock_inv_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_spiif/master_clk_d_en_r )
);
defparam \spiflash_inst/u_spi_spiif/master_clk_d_en_r_s0 .INIT=1'b0;
DFFPE \spiflash_inst/u_spi_spiif/spi_out_r_s0  (
	.D(\spiflash_inst/spi_txdata_Z ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/spi_txdata_rd_Z ),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(IO_flash_di_d)
);
defparam \spiflash_inst/u_spi_spiif/spi_out_r_s0 .INIT=1'b1;
(*gowin_io_reg = "FALSE" *) DFFPE \spiflash_inst/u_spi_spiif/spi_oe_r_1_s0  (
	.D(GND),
	.CLK(I_hclk),
	.CE(\spiflash_inst/spi_txdata_rd_Z ),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(spi_miso_oe)
);
defparam \spiflash_inst/u_spi_spiif/spi_oe_r_1_s0 .INIT=1'b1;
DFF \spiflash_inst/u_spi_spiif/spi_in_r_s0  (
	.D(IO_flash_do_in),
	.CLK(O_flash_ck),
	.Q(\spiflash_inst/u_spi_spiif/spi_in_r )
);
defparam \spiflash_inst/u_spi_spiif/spi_in_r_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_spiif/spi_in_d1_r_s0  (
	.D(\spiflash_inst/u_spi_spiif/spi_in_r ),
	.CLK(\spiflash_inst/u_spi_spiif/spi_clock_inv_6 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/spi_rxdata )
);
defparam \spiflash_inst/u_spi_spiif/spi_in_d1_r_s0 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_spiif/spi_cs_r_2_s0  (
	.D(\spiflash_inst/u_spi_spiif/spi_ns [2]),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/spi_cs_r [2])
);
defparam \spiflash_inst/u_spi_spiif/spi_cs_r_2_s0 .INIT=1'b0;
DFFP \spiflash_inst/u_spi_spiif/master_cs_r_s0  (
	.D(\spiflash_inst/u_spi_spiif/n118_3 ),
	.CLK(I_hclk),
	.PRESET(\spiflash_inst/n39_6 ),
	.Q(O_flash_cs_n)
);
defparam \spiflash_inst/u_spi_spiif/master_cs_r_s0 .INIT=1'b1;
DFFCE \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s1  (
	.D(\spiflash_inst/u_spi_spiif/n69_10 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_14 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_spiif/clock_cnt_r [3])
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_3_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_spiif/clock_cnt_r_2_s1  (
	.D(\spiflash_inst/u_spi_spiif/n70_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_14 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_spiif/clock_cnt_r [2])
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_2_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_spiif/clock_cnt_r_1_s1  (
	.D(\spiflash_inst/u_spi_spiif/n71_9 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_spiif/clock_cnt_r_3_14 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_spiif/clock_cnt_r [1])
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_1_s1 .INIT=1'b0;
DFFCE \spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_s1  (
	.D(\spiflash_inst/u_spi_spiif/n127_7 ),
	.CLK(I_hclk),
	.CE(\spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_8 ),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/master_rxdata_wr_lvl_r )
);
defparam \spiflash_inst/u_spi_spiif/master_rxdata_wr_lvl_r_s1 .INIT=1'b0;
DFFC \spiflash_inst/u_spi_spiif/clock_cnt_r_0_s3  (
	.D(\spiflash_inst/u_spi_spiif/n72_12 ),
	.CLK(I_hclk),
	.CLEAR(\spiflash_inst/n39_6 ),
	.Q(\spiflash_inst/u_spi_spiif/clock_cnt_r [0])
);
defparam \spiflash_inst/u_spi_spiif/clock_cnt_r_0_s3 .INIT=1'b0;
INV \spiflash_inst/u_spi_spiif/spi_clock_inv_s2  (
	.I(I_hclk),
	.O(\spiflash_inst/u_spi_spiif/spi_clock_inv_6 )
);
LUT2 \spiflash_inst/u_spi_spiif/master_gclk_1/O_flash_ck_d_s  (
	.I0(I_hclk),
	.I1(\spiflash_inst/u_spi_spiif/master_gclk_1/latch_out ),
	.F(O_flash_ck)
);
defparam \spiflash_inst/u_spi_spiif/master_gclk_1/O_flash_ck_d_s .INIT=4'h4;
DL \spiflash_inst/u_spi_spiif/master_gclk_1/latch_out_s0  (
	.D(\spiflash_inst/u_spi_spiif/master_clk_d_en_r ),
	.G(I_hclk),
	.Q(\spiflash_inst/u_spi_spiif/master_gclk_1/latch_out )
);
defparam \spiflash_inst/u_spi_spiif/master_gclk_1/latch_out_s0 .INIT=1'b0;
endmodule
