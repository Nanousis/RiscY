module clint (
    input wire clk,
    input wire reset,
    input wire [31:0] addr,       // Address for memory-mapped access
    input wire [31:0] wdata,      // Data to write
    input wire write_enable,      // Write enable signal
    output reg [31:0] rdata,      // Data to read
    output reg msw_irq,           // Software interrupt signal (to mip.MSW)
    output reg mtimer_irq         // Timer interrupt signal (to mip.MTIMER)
);

    reg msip;

    // Timer registers
    reg [63:0] mtime;             // Free-running timer
    reg [63:0] mtimecmp;          // Timer compare register

    // Memory-mapped addresses
    localparam MSIP_ADDR = 32'h02000000;
    localparam MTIME_ADDR = 32'h0200BFF8;
    localparam MTIMECMP_ADDR = 32'h02004000;

    // Free-running timer increment logic
    always @(posedge clk or negedge reset) begin
        if (reset==1'b0)
            mtime <= 64'b0;
        else
            mtime <= mtime + 1;
    end
    // Write logic
    always @(posedge clk or negedge reset) begin
        if (reset==1'b0) begin
            msip <= 1'b0;
            mtimecmp <= 64'hFFFFFFFFFFFFFFFF;
        end else 
        begin
            case (addr)
                MSIP_ADDR:       rdata <= {31'b0, msip};            // Read msip
                MTIME_ADDR:      rdata <= mtime[31:0];              // Read lower 32 bits of mtime
                MTIME_ADDR + 4:  rdata <= mtime[63:32];             // Read upper 32 bits of mtime
                MTIMECMP_ADDR:   rdata <= mtimecmp[31:0];           // Read lower 32 bits of mtimecmp
                MTIMECMP_ADDR + 4: rdata <= mtimecmp[63:32];        // Read upper 32 bits of mtimecmp
                default:         rdata <= 32'b0;
            endcase
            if (write_enable) begin
                case (addr)
                    MSIP_ADDR:       msip <= wdata[0];             // Write to msip
                    MTIMECMP_ADDR:   mtimecmp[31:0] <= wdata;      // Write lower 32 bits of mtimecmp
                    MTIMECMP_ADDR + 4: mtimecmp[63:32] <= wdata;   // Write upper 32 bits of mtimecmp
                endcase
            end
        end
    end

    // Interrupt generation
    always @(*) begin
        msw_irq = msip;                           // Software interrupt pending
        mtimer_irq = (mtime >= mtimecmp);         // Timer interrupt pending
    end
endmodule
