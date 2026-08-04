`timescale 1ns / 1ps

module rotword(

    input  wire [31:0] word_in,
    output wire [31:0] word_out

);

assign word_out = {

    word_in[23:0],
    word_in[31:24]

};

endmodule
