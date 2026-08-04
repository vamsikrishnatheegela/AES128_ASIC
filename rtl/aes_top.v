`timescale 1ns / 1ps

module aes_top(

    input wire clk,
    input wire rst,
    input wire start,

    input wire [127:0] plaintext,
    input wire [127:0] key,

    output wire [127:0] ciphertext,
    output wire done

);

wire busy;
wire [3:0] round;

wire [127:0] state0;
wire [127:0] state1;
wire [127:0] state2;
wire [127:0] state3;
wire [127:0] state4;
wire [127:0] round_key0;
wire [127:0] round_key1;
wire [127:0] round_key2;
wire [127:0] round_key3;
wire [127:0] round_key4;
wire [127:0] round_key5;
wire [127:0] round_key6;
wire [127:0] round_key7;
wire [127:0] round_key8;
wire [127:0] round_key9;
wire [127:0] round_key10;
aes_controller controller(

    .clk(clk),
    .rst(rst),
    .start(start),

    .busy(busy),
    .done(done),
    .round(round)

);
key_expansion keygen(

    .key(key),

    .round_key0(round_key0),
    .round_key1(round_key1),
    .round_key2(round_key2),
    .round_key3(round_key3),
    .round_key4(round_key4),
    .round_key5(round_key5),
    .round_key6(round_key6),
    .round_key7(round_key7),
    .round_key8(round_key8),
    .round_key9(round_key9),
    .round_key10(round_key10)

);

state_register state_reg(

    .clk(clk),
    .rst(rst),
    .load(start),

    .state_in(plaintext),
    .state_out(state0)

);

addroundkey ark0(

    .state_in(state0),
    .round_key(round_key0),
    .state_out(state1)

);

subbytes sb(

    .state_in(state1),
    .state_out(state2)

);

shiftrows sr(

    .state_in(state2),
    .state_out(state3)

);

mixcolumns mc(

    .state_in(state3),
    .state_out(state4)

);

addroundkey ark1(

    .state_in(state4),
    .round_key(round_key1),
    .state_out(ciphertext)

);
endmodule
