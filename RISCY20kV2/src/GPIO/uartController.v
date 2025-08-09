/*
May end up changing the uart controller to this one 
https://github.com/freecores/uart16550/blob/master/rtl/verilog/uart_top.v
to allow for a typical 16550 uart.
*/


/* register definitions */
`define REG_RBR		'h00 /* Receiver buffer reg. */
`define REG_THR		'h00 /* Transmitter holding reg. */
`define REG_IER		'h01 /* Interrupt enable reg. */
`define REG_IIR		'h02 /* Interrupt ID reg. */
`define REG_FCR		'h02 /* FIFO control reg. */
`define REG_LCR		'h03 /* Line control reg. */
`define REG_MCR		'h04 /* Modem control reg. */
`define REG_LSR		'h05 /* Line status reg. */
`define REG_MSR		'h06 /* Modem status reg. */
`define REG_SCR		'h07 /* Scratch reg. */
`define REG_BRDL	'h00 /* Divisor latch (LSB) */
`define REG_BRDH	'h01 /* Divisor latch (MSB) */

/* Line status */
`define LSR_DR			'h01 /* Data ready */
`define LSR_OE			'h02 /* Overrun error */
`define LSR_PE			'h04 /* Parity error */
`define LSR_FE			'h08 /* Framing error */
`define LSR_BI			'h10 /* Break interrupt */
`define LSR_THRE		'h20 /* Transmitter holding register empty */
`define LSR_TEMT		'h40 /* Transmitter empty */
`define LSR_EIRF		'h80 /* Error in RCVR FIFO */
module uartController(
    input clk,
    input reset,
    input ren,
    input wen,
    input uart_rx,
    output uart_tx,
    input [2:0] address,
    input [31:0] word_in,
    output[31:0] data_out
);

reg [7:0] data_in;

always @(*)begin
    case(address[1:0])
        0:data_in = word_in[7:0];
        1:data_in = word_in[15:8];
        2:data_in = word_in[23:16];
        3:data_in = word_in[31:24];
    endcase
end

assign data_out = {byte_out,byte_out,byte_out,byte_out};


reg [7:0] byte_out=0;


wire rx_rdy, tx_busy;
wire [7:0] rx_data;
reg [7:0] tx_data=0;
reg ena_tx=0;

reg [7:0] ier=0;
reg [7:0] lcr=0;
wire [7:0] lsr;

reg [7:0] dll=0;
reg [7:0] dlm=0;

// Define LCR[7] as DLAB bit
wire dlab = lcr[7];


// Line Status Register bits (simplified)
assign lsr = {1'b0, ~tx_busy, ~tx_busy, 1'b0, 1'b0, 1'b0, 1'b0, rx_ready_latched};

reg rx_ready_latched = 0;
reg [7:0] rx_data_latched = 0;


always @(posedge clk or negedge reset) begin
    if (!reset) begin
        byte_out <= 8'b0;
        tx_data <= 8'b0;
        ena_tx <= 1'b0;
        ier <= 8'b0;
        lcr <= 8'b0;
        dll <= 8'd1;
        dlm <= 8'd0;
        rx_ready_latched <= 0;
    end else begin
        ena_tx <= 1'b0;

        // Latch rx_data when rx_rdy pulse happens
        if (rx_rdy) begin
            rx_data_latched <= rx_data;
            rx_ready_latched <= 1;
        end

        // Write
        if (wen) begin
            if (dlab) begin
                case (address)
                    3'h0: dll <= data_in;
                    3'h1: dlm <= data_in;
                endcase
            end else begin
                case (address)
                    3'h0: begin
                        tx_data <= data_in;
                        ena_tx <= 1;
                    end
                    3'h1: ier <= data_in;
                    3'h3: lcr <= data_in;
                endcase
            end
        end

        // Read
        if (ren) begin
            if (dlab) begin
                case (address)
                    3'h0: byte_out <= dll;
                    3'h1: byte_out <= dlm;
                    default: byte_out <= 8'h00;
                endcase
            end else begin
                case (address)
                    3'h0: begin
                        byte_out <= rx_data_latched;
                        rx_ready_latched <= 0;  // Clear "data ready" after reading
                    end
                    3'h1: byte_out <= ier;
                    3'h5: byte_out <= lsr;
                    default: byte_out <= 8'h00;
                endcase
            end
        end
    end
end

sync_rs232_uart #(
    .SYSCLK_MHZ(27),
    .BAUD_RATE(115200) // Change dynamically if desired
) uart_inst (
    .clk(clk),
    .rxd(uart_rx),
    .rx_rdy(rx_rdy),
    .rx_data(rx_data),
    .ena_tx(ena_tx),
    .tx_data(tx_data),
    .txd(uart_tx),
    .tx_busy(tx_busy),
    .rx_sample_pulse()
);
endmodule
