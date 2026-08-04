`timescale 1ns / 1ps

module tb_mixcolumns;

reg  [31:0] column_in;
wire [31:0] column_out;

mixcolumns uut(
    .column_in(column_in),
    .column_out(column_out)
);

initial begin

    $display("===== MixColumns Test =====");

    // Official AES example (FIPS-197)
    column_in = 32'hDB135345;

    #20;

    $display("Input : %h", column_in);
    $display("Output: %h", column_out);

    $finish;

end

endmodule
