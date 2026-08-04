`timescale 1ns / 1ps

module mixcolumns(

    input  wire [127:0] state_in,
    output wire [127:0] state_out

);

mixcolumn col0(

    .column_in(state_in[127:96]),
    .column_out(state_out[127:96])

);

mixcolumn col1(

    .column_in(state_in[95:64]),
    .column_out(state_out[95:64])

);

mixcolumn col2(

    .column_in(state_in[63:32]),
    .column_out(state_out[63:32])

);

mixcolumn col3(

    .column_in(state_in[31:0]),
    .column_out(state_out[31:0])

);

endmodule
