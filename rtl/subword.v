`timescale 1ns / 1ps

module subword(

    input  wire [31:0] word_in,
    output wire [31:0] word_out

);

sbox s0(
    .in(word_in[31:24]),
    .out(word_out[31:24])
);

sbox s1(
    .in(word_in[23:16]),
    .out(word_out[23:16])
);

sbox s2(
    .in(word_in[15:8]),
    .out(word_out[15:8])
);

sbox s3(
    .in(word_in[7:0]),
    .out(word_out[7:0])
);

endmodule
