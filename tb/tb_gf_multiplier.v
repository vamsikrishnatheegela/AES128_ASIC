`timescale 1ns / 1ps

module tb_gf_multiplier;

reg [7:0] in;
reg [1:0] sel;

wire [7:0] out;

gf_multiplier uut(

    .in(in),
    .sel(sel),
    .out(out)

);

initial begin

    $display("GF Multiplier Test");

    in = 8'h57;

    sel = 2'b00;
    #10;

    sel = 2'b01;
    #10;

    sel = 2'b10;
    #10;

    $finish;

end

initial begin

    $monitor(
        "Time=%0t in=%h sel=%b out=%h",
        $time,
        in,
        sel,
        out
    );

end

endmodule
