`timescale 1ns / 1ps

module tb_addroundkey;

reg  [127:0] state_in;
reg  [127:0] round_key;
wire [127:0] state_out;

addroundkey uut(

    .state_in(state_in),
    .round_key(round_key),
    .state_out(state_out)

);

initial begin

    $display("===== AddRoundKey Test =====");

    state_in  = 128'h00112233445566778899AABBCCDDEEFF;
    round_key = 128'h000102030405060708090A0B0C0D0E0F;

    #10;

    $display("State     : %h", state_in);
    $display("Round Key : %h", round_key);
    $display("Output    : %h", state_out);

    $finish;

end

endmodule
