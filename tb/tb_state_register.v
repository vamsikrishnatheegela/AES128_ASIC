`timescale 1ns / 1ps

module tb_state_register;

reg clk;
reg rst;
reg load;
reg enable;

reg [127:0] state_in;

wire [127:0] state_out;

state_register uut(

    .clk(clk),
    .rst(rst),

    .load(load),
    .enable(enable),

    .state_in(state_in),

    .state_out(state_out)

);

always #5 clk = ~clk;

initial begin

    clk = 0;

    rst = 1;
    load = 0;
    enable = 0;

    state_in = 128'd0;

    #20;

    rst = 0;

    state_in = 128'h00112233445566778899AABBCCDDEEFF;

    load = 1;

    #10;

    load = 0;

    state_in = 128'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF;

    enable = 1;

    #10;

    enable = 0;

    #20;

    $finish;

end

initial begin

    $monitor("Time=%0t  state=%h", $time, state_out);

end

endmodule
