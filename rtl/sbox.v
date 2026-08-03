`timescale 1ns / 1ps

module sbox(
    input  wire [7:0] in,
    output reg  [7:0] out
);

always @(*) begin
    case (in)

        // S-Box values will go here

        default: out = 8'h00;

    endcase
end

endmodule
