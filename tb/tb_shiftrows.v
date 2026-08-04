`timescale 1ns / 1ps

module tb_shiftrows;

reg  [127:0] state_in;
wire [127:0] state_out;

shiftrows uut(

    .state_in(state_in),
    .state_out(state_out)

);

initial begin

    $display("===== ShiftRows Test =====");

    // FIPS-197 example state
    state_in = 128'h63CAB7040953D051CD60E0E7BA70E18C;

    #20;

    $display("Input : %h", state_in);
    $display("Output: %h", state_out);

    $finish;

end

endmodule
