`ifndef TESTBENCH
`include "constants.vh"
`include "config.vh"
`else
`include "../includes/constants.vh"
`include "../includes/config.vh"
`endif

/**************** control for Stall Detection in ID pipe stage  **********/
/****************** Create bubbles for loads and branches ****************/
module  control_stall_id(	
	output reg bubble_ifid,
	output reg bubble_idex,
	output reg bubble_exmem,
	output reg bubble_memwb,
	output reg write_ifid,
	output reg write_idex,
	output reg write_exmem,
	output reg write_memwb,
	output reg write_pc,
	output reg trap_waiting,
	input [4:0] ifid_rs,
	input [4:0] ifid_rt,
	input [4:0] idex_rd,
	input memRead,
	input idex_memWrite,
	input idex_memread,
	input memReady,
	input Jump,
	input IDEX_Branch,
	input EXMEM_Branch,
	input syscall,
	input int_trap,
	input trap_in_ID,
	input flushPipeline,
	input PCSrc);

reg memStalled=0;
reg suppressTrap=0;

reg [3:0] state;

always @(*)
begin
	state = 4'b0000;
	bubble_ifid		= 1'b0;
	bubble_idex		= 1'b0;
	bubble_exmem	= 1'b0;
	bubble_memwb	= 1'b0;
	write_pc		= 1'b1;
	write_ifid		= 1'b1;
	write_idex		= 1'b1;
	write_exmem		= 1'b1;
	write_memwb		= 1'b1;
	memStalled		= 1'b0;
	suppressTrap	= 1'b0;
	trap_waiting   	= syscall;
	if(memReady == 1'b0) begin // Memory not ready
		state = 4'd1;
		memStalled		= 1'b1;
		// stupid line, too scared to remove it
		if(memStalled == 1'b0) begin
			write_exmem		= 1'b0;
			write_idex		= 1'b0;
			write_ifid		= 1'b1;
			write_pc		= 1'b0;
		end
		else begin
			write_memwb		= 1'b0;
			write_exmem		= 1'b0;
			write_idex		= 1'b0;
			write_ifid		= 1'b0;
			write_pc		= 1'b0;
			trap_waiting	= 1'b0;
		end
	end
	// if we have a branch, we need to make sure that the branch is 
	// executed before taking a future trap. Hence we stall the pipeline
	else if((IDEX_Branch|EXMEM_Branch) && (syscall))begin
		state = 4'd2;
		suppressTrap=1;
		bubble_idex	= 1'b1;
		write_ifid	= 1'b0;
		trap_waiting= 1'b0;
	end
	else if(memRead==1'b1 && idex_memWrite == 1'b1)begin
		state = 4'd3;
		bubble_idex	= 1'b1;
		write_ifid	= 1'b0;
		write_pc	= 1'b0;
		trap_waiting= 1'b0;
	end
	else if ((idex_memread == 1'b1) && ((idex_rd==ifid_rs) || (idex_rd==ifid_rt))) begin // Load stall
		state = 4'd4;
		bubble_idex	= 1'b1;
		write_ifid	= 1'b0;
		write_pc	= 1'b0;
		trap_waiting= 1'b0;
	end
	else if (Jump == 1'b1||trap_in_ID == 1'b1) begin // j instruction in ID stage	
		state = 4'd5;
		bubble_ifid	= 1'b1;
	end
	if(int_trap == 1'b1) begin // Trap in ID stage
		state = 4'd6;
		bubble_ifid		= 1'b1;
		bubble_idex		= 1'b1;
		bubble_exmem	= 1'b1;
		bubble_memwb	= 1'b1;
		write_pc	= 1'b1;
	end
	else
	if (PCSrc == 1'b1) begin // Taken Branch in MEM stage
		state = 4'd7;
		bubble_ifid		= 1'b1;
		bubble_idex		= 1'b1;
		bubble_exmem	= 1'b1;
		write_pc	= 1'b1;
	end
	if(flushPipeline == 1'b1) begin
		state = 4'd8;
		bubble_ifid		= 1'b1;
		// write_pc	= 1'b0;
	end
end
endmodule