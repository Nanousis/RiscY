
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

localparam ENCRYPTION_KEY = 0;
localparam DATA_TO_ENCRYPT = 2;
localparam DATA_TO_DECRYPT = 3;
localparam ENCRYPTED_DATA = 4;
localparam DECRYPTED_DATA = 5;
localparam ENCRYPTION_ENABLE = 6;
localparam DECRYPTION_ENABLE = 7;
localparam ENCRYPT_DONE = 8;
localparam DECRYPT_DONE = 9;

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
    end
    else begin
        decrypt_en<=0;
        encrypt_en<=0;
        new_decryption_round_delayed <= new_decryption_round;
        new_encryption_round_delayed <= new_encryption_round;
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

endmodule