`timescale 1ns / 1ps

module gf_multiplier(

    input  wire [7:0] in,
    input  wire [1:0] sel,
    output reg  [7:0] out

);

wire [7:0] xtime;

assign xtime =
    in[7] ?
    ((in << 1) ^ 8'h1B) :
    (in << 1);

always @(*) begin

    case(sel)

        2'b01: out = xtime;
        2'b10: out = xtime ^ in;

        default: out = in;

    endcase

end

endmodule
