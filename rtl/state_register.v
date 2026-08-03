`timescale 1ns / 1ps

module state_register(

    input wire clk,
    input wire rst,

    input wire load,
    input wire enable,

    input wire [127:0] state_in,

    output reg [127:0] state_out

);

always @(posedge clk or posedge rst)
begin

    if(rst)
        state_out <= 128'd0;

    else if(load)
        state_out <= state_in;

    else if(enable)
        state_out <= state_in;

end

endmodule
