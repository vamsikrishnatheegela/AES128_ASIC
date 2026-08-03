`timescale 1ns / 1ps

module tb_sbox;

reg  [7:0] in;
wire [7:0] out;

sbox uut (
    .in(in),
    .out(out)
);

initial begin

    $display("Starting AES S-Box Test");

    in = 8'h00;
    #10;

    in = 8'h53;
    #10;

    in = 8'h7A;
    #10;

    $finish;

end

initial begin
    $monitor("Time=%0t Input=%h Output=%h", $time, in, out);
end

endmodule
