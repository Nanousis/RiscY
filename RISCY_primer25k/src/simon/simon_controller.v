
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

reg decrypt_en;
reg encrypt_en;

always@(posedge clk or negedge reset)begin
    if(reset==1'b0)begin
        key_in <= 0;
        data_to_encrypt <= 0;
        data_to_decrypt <= 0;
        decrypt_en<=0;
        encrypt_en<=0;
    end
    else begin
        
        decrypt_en<=0;
        encrypt_en<=0;
        if(ren)begin
            case(address)
                // ENCRYPTED DATA
                ENCRYPTED_DATA+0: data_out <= encrypt_out;
                // DECRYPTED DATA
                DECRYPTED_DATA+0: data_out <= decrypt_out;
                default: data_out <= 0;
            endcase
        end
        if(wen)begin
            encrypt_en<=0;
            decrypt_en<=0;
            case(address)
                // ENCRYPTION KEY
                ENCRYPTION_KEY+0: key_in[31:0]    <= data_in[31:0];
                ENCRYPTION_KEY+1: key_in[63:32]     <= data_in[31:0];
                // ENCRYPTION DATA
                DATA_TO_ENCRYPT+0: 
                begin
                    data_to_encrypt <= data_in[31:0];
                    encrypt_en<=1;
                end
                // DECRYPTION DATA
                DATA_TO_DECRYPT+0:begin
                    data_to_decrypt <= data_in[31:0];
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