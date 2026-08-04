`timescale 1ns / 1ps

module key_expansion(

    input  wire [127:0] key,

    output wire [127:0] round_key0,
    output wire [127:0] round_key1,
    output wire [127:0] round_key2,
    output wire [127:0] round_key3,
    output wire [127:0] round_key4,
    output wire [127:0] round_key5,
    output wire [127:0] round_key6,
    output wire [127:0] round_key7,
    output wire [127:0] round_key8,
    output wire [127:0] round_key9,
    output wire [127:0] round_key10

);

// -------------------------------------------------
// Original Key (W0-W3)
// -------------------------------------------------

wire [31:0] w0;
wire [31:0] w1;
wire [31:0] w2;
wire [31:0] w3;

assign w0 = key[127:96];
assign w1 = key[95:64];
assign w2 = key[63:32];
assign w3 = key[31:0];
// -------------------------------------------------
// W4-W7
// -------------------------------------------------

wire [31:0] temp0;

key_schedule_core ksc0(

    .word_in(w3),
    .round(4'd1),
    .word_out(temp0)

);

wire [31:0] w4;
wire [31:0] w5;
wire [31:0] w6;
wire [31:0] w7;

assign w4 = w0 ^ temp0;
assign w5 = w1 ^ w4;
assign w6 = w2 ^ w5;
assign w7 = w3 ^ w6;
// Remaining words will be generated here
assign round_key0 = {w0,w1,w2,w3};
assign round_key1 = {w4,w5,w6,w7};
assign round_key2  = 128'd0;
assign round_key3  = 128'd0;
assign round_key4  = 128'd0;
assign round_key5  = 128'd0;
assign round_key6  = 128'd0;
assign round_key7  = 128'd0;
assign round_key8  = 128'd0;
assign round_key9  = 128'd0;
assign round_key10 = 128'd0;

endmodule
