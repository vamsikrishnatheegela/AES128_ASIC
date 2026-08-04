`timescale 1ns / 1ps

module tb_rcon;

reg [3:0] round;
wire [31:0] rcon;

rcon uut(

    .round(round),
    .rcon(rcon)

);

initial begin

    $display("===== Rcon Test =====");

    round = 1; #10;
    $display("Round=%0d Rcon=%h", round, rcon);

    round = 2; #10;
    $display("Round=%0d Rcon=%h", round, rcon);

    round = 9; #10;
    $display("Round=%0d Rcon=%h", round, rcon);

    round = 10; #10;
    $display("Round=%0d Rcon=%h", round, rcon);

    $finish;

end

endmodule
