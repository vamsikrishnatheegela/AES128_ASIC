`timescale 1ns / 1ps

module tb_aes_top;

reg clk;
reg rst;
reg start;

reg [127:0] plaintext;
reg [127:0] key;

wire [127:0] ciphertext;
wire done;

aes_top uut(

    .clk(clk),
    .rst(rst),
    .start(start),

    .plaintext(plaintext),
    .key(key),

    .ciphertext(ciphertext),
    .done(done)

);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    start = 0;

    plaintext = 128'h00112233445566778899AABBCCDDEEFF;
    key       = 128'h000102030405060708090A0B0C0D0E0F;

    #20;

    rst = 0;

    #10;

    start = 1;

    #10;

    start = 0;

    #300;

    $display("Ciphertext = %h", ciphertext);

    $finish;

end

endmodule
