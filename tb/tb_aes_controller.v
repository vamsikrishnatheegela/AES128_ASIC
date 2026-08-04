`timescale 1ns / 1ps

module tb_aes_controller;

reg clk;
reg rst;
reg start;

wire done;
wire busy;
wire [3:0] round;

aes_controller uut(

    .clk(clk),
    .rst(rst),
    .start(start),

    .done(done),
    .busy(busy),
    .round(round)

);

always #5 clk = ~clk;

initial begin

    clk = 0;
    rst = 1;
    start = 0;

    #20;

    rst = 0;

    #10;

    start = 1;

    #10;

    start = 0;

    #200;

    $finish;

end

initial begin

    $monitor(
    "Time=%0t Round=%0d Busy=%b Done=%b",
    $time,
    round,
    busy,
    done
    );

end

endmodule
