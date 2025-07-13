
module Encryption_Controller(
    input clk,
    input reset,
    input [31:0] data_in,
    input [7:0]  address,
    output reg [31:0] data_out,
    input ren,
    input wen
);

reg [63:0] key_in=0;
reg [31:0] data_to_encrypt=0;
reg [31:0] data_to_decrypt=0;
wire [31:0] encrypt_out;
wire [31:0] decrypt_out;
reg sha_is_last;
reg sha_is_ready;
reg sha_is_last_delayed;
reg [31:0] sha_in;
wire [511:0] sha_out;
wire [1:0] sha_size;
wire sha_buffer_full;

localparam ENCRYPTION_KEY = 0;
localparam DATA_TO_ENCRYPT = 2;
localparam DATA_TO_DECRYPT = 3;
localparam ENCRYPTED_DATA = 4;
localparam DECRYPTED_DATA = 5;
localparam ENCRYPTION_ENABLE = 6;
localparam DECRYPTION_ENABLE = 7;
localparam ENCRYPT_DONE = 8;
localparam DECRYPT_DONE = 9;
localparam SHA_IN = 9;
localparam SHA_OUT = 10;
localparam SHA_IS_LAST = 11;



reg decrptypt_done_reg=0;
reg encrypt_done_reg=0;
reg decrypt_en;
reg encrypt_en;
reg new_encryption_round=1;
reg new_decryption_round=1;
reg new_encryption_round_delayed=1;
reg new_decryption_round_delayed=1;

always@(posedge clk or negedge reset)begin
    if(reset==1'b0)begin
        key_in <= 0;
        data_to_encrypt <= 0;
        data_to_decrypt <= 0;
        decrypt_en<=0;
        encrypt_en<=0;
        encrypt_done_reg<=0;
        decrptypt_done_reg<=0;
        sha_is_last <= 0;
        sha_is_ready <= 0;
    end
    else begin
        decrypt_en<=0;
        encrypt_en<=0;
        new_decryption_round_delayed <= new_decryption_round;
        new_encryption_round_delayed <= new_encryption_round;
        sha_is_ready <= 0;
        sha_is_last <= 0;
        if(enc_done&&new_encryption_round_delayed)begin
            encrypt_done_reg<=1;
            new_encryption_round<=0;
        end
        if(dec_done&&new_decryption_round_delayed)begin
            decrptypt_done_reg<=1;
            new_decryption_round<=0;
        end
        if(ren)begin
            case(address)
                // ENCRYPTED DATA
                ENCRYPTED_DATA+0: data_out <= encrypt_out;
                // DECRYPTED DATA
                DECRYPTED_DATA+0: data_out <= decrypt_out;
                ENCRYPT_DONE: 
                begin
                    data_out <= encrypt_done_reg;
                    encrypt_done_reg<=0;
                end
                DECRYPT_DONE:begin
                    data_out <= decrptypt_done_reg;
                    decrptypt_done_reg<=0;
                end
                SHA_OUT+0:
                    data_out = sha_out[31:0];
                SHA_OUT+1:
                    data_out = sha_out[63:32];
                SHA_OUT+2:
                    data_out = sha_out[95:64];
                SHA_OUT+3:
                    data_out = sha_out[127:96];
                SHA_OUT+4:
                    data_out = sha_out[159:128];
                SHA_OUT+5:
                    data_out = sha_out[191:160];
                SHA_OUT+6:
                    data_out = sha_out[223:192];
                SHA_OUT+7:
                    data_out = sha_out[255:224];
                SHA_OUT+8:
                    data_out = sha_out[287:256];
                SHA_OUT+9:
                    data_out = sha_out[319:288];
                SHA_OUT+10:
                    data_out = sha_out[351:320];
                SHA_OUT+11:
                    data_out = sha_out[383:352];
                SHA_OUT+12:
                    data_out = sha_out[415:384];
                SHA_OUT+13:
                    data_out = sha_out[447:416];
                SHA_OUT+14:
                    data_out = sha_out[479:448];
                SHA_OUT+15:
                    data_out = sha_out[511:480];
                default: data_out <= 0;
            endcase
        end
        if(wen)begin
            encrypt_en<=0;
            decrypt_en<=0;
            case(address)
                // ENCRYPTION KEY
                ENCRYPTION_KEY+0:
                begin 
                    key_in[31:0]    <= data_in[31:0];
                end
                ENCRYPTION_KEY+1:begin
                    key_in[63:32]     <= data_in[31:0];
                end
                // ENCRYPTION DATA
                DATA_TO_ENCRYPT+0: 
                begin
                    data_to_encrypt <= data_in[31:0];
                    encrypt_done_reg<=0;
                end
                // DECRYPTION DATA
                DATA_TO_DECRYPT+0:begin
                    decrptypt_done_reg<=0;
                    data_to_decrypt <= data_in[31:0];
                end
                ENCRYPTION_ENABLE: begin
                    new_encryption_round<=1;
                    encrypt_en<=1;
                end
                DECRYPTION_ENABLE: begin
                    new_decryption_round<=1;
                    decrypt_en<=1;
                end
                SHA_IN:begin
                    sha_in <= data_in[31:0];
                    sha_is_ready <= 1;
                    if(!sha_is_last_delayed) begin
                        sha_is_last <= 1;
                    end
                end
                SHA_IS_LAST:begin
                    sha_is_last_delayed <= data_in[0];
                end
            endcase
        end
    end
end
wire enc_done;
wire dec_done;

simon #(.n(16), .m(4)) encryptor(
    .clk(clk),
    .rst(!reset),
    .ciphertext(encrypt_out),
    .key(key_in),
    .plaintext(data_to_encrypt),
    .en(encrypt_en),
    .done(enc_done)
);

simon_decrypt #(.n(16), .m(4)) decryptor(
    .clk(clk),
    .rst(!reset),
    .ciphertext(data_to_decrypt),
    .key(key_in),
    .plaintext(decrypt_out),
    .en(decrypt_en),
    .done(dec_done)
);
wire sha_out_rdy;
keccak uut (
    .clk(clk),
    .reset(!reset),
    .in(sha_in),
    .in_ready(sha_is_ready),
    .is_last(sha_is_last),
    .byte_num(2'b11),
    .buffer_full(sha_buffer_full),
    .out(sha_out),
    .out_ready(sha_out_rdy),
    .out_size(sha_size)
);

endmodule