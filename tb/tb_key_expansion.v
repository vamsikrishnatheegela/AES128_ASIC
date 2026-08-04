`timescale 1ns/1ps

module tb_key_expansion;

reg  [127:0] key;

wire [127:0] round_key0;
wire [127:0] round_key1;
wire [127:0] round_key2;
wire [127:0] round_key3;
wire [127:0] round_key4;
wire [127:0] round_key5;
wire [127:0] round_key6;
wire [127:0] round_key7;
wire [127:0] round_key8;
wire [127:0] round_key9;
wire [127:0] round_key10;

key_expansion uut(

    .key(key),

    .round_key0(round_key0),
    .round_key1(round_key1),
    .round_key2(round_key2),
    .round_key3(round_key3),
    .round_key4(round_key4),
    .round_key5(round_key5),
    .round_key6(round_key6),
    .round_key7(round_key7),
    .round_key8(round_key8),
    .round_key9(round_key9),
    .round_key10(round_key10)

);

initial begin

    key = 128'h000102030405060708090A0B0C0D0E0F;

    #20;

    $display("Round Key 0 = %h", round_key0);
    $display("Round Key 1 = %h", round_key1);

    $finish;

end

endmodule
