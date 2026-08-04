`timescale 1ns / 1ps

module tb_rotword;

reg  [31:0] word_in;
wire [31:0] word_out;

rotword uut(

    .word_in(word_in),
    .word_out(word_out)

);

initial begin

    $display("===== RotWord Test =====");

    word_in = 32'h0C0D0E0F;

    #10;

    $display("Input : %h", word_in);
    $display("Output: %h", word_out);

    $finish;

end

endmodule
