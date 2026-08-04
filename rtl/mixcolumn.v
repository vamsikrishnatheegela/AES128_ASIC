`timescale 1ns / 1ps

module mixcolumn(

    input  wire [31:0] column_in,
    output wire [31:0] column_out

);

wire [7:0] b0,b1,b2,b3;
wire [7:0] b0x2,b1x2,b2x2,b3x2;
wire [7:0] b0x3,b1x3,b2x3,b3x3;

assign b0 = column_in[31:24];
assign b1 = column_in[23:16];
assign b2 = column_in[15:8];
assign b3 = column_in[7:0];

gf_multiplier m0 (.in(b0), .sel(2'b01), .out(b0x2));
gf_multiplier m1 (.in(b1), .sel(2'b01), .out(b1x2));
gf_multiplier m2 (.in(b2), .sel(2'b01), .out(b2x2));
gf_multiplier m3 (.in(b3), .sel(2'b01), .out(b3x2));

gf_multiplier m4 (.in(b0), .sel(2'b10), .out(b0x3));
gf_multiplier m5 (.in(b1), .sel(2'b10), .out(b1x3));
gf_multiplier m6 (.in(b2), .sel(2'b10), .out(b2x3));
gf_multiplier m7 (.in(b3), .sel(2'b10), .out(b3x3));

assign column_out[31:24] = b0x2 ^ b1x3 ^ b2 ^ b3;
assign column_out[23:16] = b0 ^ b1x2 ^ b2x3 ^ b3;
assign column_out[15:8]  = b0 ^ b1 ^ b2x2 ^ b3x3;
assign column_out[7:0]   = b0x3 ^ b1 ^ b2 ^ b3x2;

endmodule
