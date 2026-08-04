`timescale 1ns / 1ps

module tb_subword;

reg  [31:0] word_in;
wire [31:0] word_out;

subword uut(

    .word_in(word_in),
    .word_out(word_out)

);

initial begin

    $display("===== SubWord Test =====");

    word_in = 32'h0C0D0E0F;

    #20;

    $display("Input : %h", word_in);
    $display("Output: %h", word_out);

    $finish;

end

endmodule
