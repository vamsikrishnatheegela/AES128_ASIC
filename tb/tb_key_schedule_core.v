`timescale 1ns / 1ps

module tb_key_schedule_core;

reg  [31:0] word_in;
reg  [3:0]  round;
wire [31:0] word_out;

key_schedule_core uut(

    .word_in(word_in),
    .round(round),
    .word_out(word_out)

);

initial begin

    $display("===== Key Schedule Core Test =====");

    word_in = 32'h0C0D0E0F;
    round   = 1;

    #20;

    $display("Input  : %h", word_in);
    $display("Round  : %0d", round);
    $display("Output : %h", word_out);

    $finish;

end

endmodule
