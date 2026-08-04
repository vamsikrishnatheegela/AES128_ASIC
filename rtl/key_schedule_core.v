`timescale 1ns / 1ps

module key_schedule_core(

    input  wire [31:0] word_in,
    input  wire [3:0]  round,
    output wire [31:0] word_out

);

wire [31:0] rot_word;
wire [31:0] sub_word;
wire [31:0] rcon_word;

rotword rot_inst(
    .word_in(word_in),
    .word_out(rot_word)
);

subword sub_inst(
    .word_in(rot_word),
    .word_out(sub_word)
);

rcon rcon_inst(
    .round(round),
    .rcon(rcon_word)
);

assign word_out = sub_word ^ rcon_word;

endmodule
