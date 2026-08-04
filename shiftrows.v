`timescale 1ns / 1ps

module shiftrows(

    input  wire [127:0] state_in,
    output wire [127:0] state_out

);

// Arrange the state as:
//
// [  0   4   8  12 ]
// [  1   5   9  13 ]
// [  2   6  10  14 ]
// [  3   7  11  15 ]
//
// ShiftRows:
// Row0 : no shift
// Row1 : shift left by 1
// Row2 : shift left by 2
// Row3 : shift left by 3

assign state_out = {

    // Column 0
    state_in[127:120],   // b0
    state_in[87:80],     // b5
    state_in[47:40],     // b10
    state_in[7:0],       // b15

    // Column 1
    state_in[95:88],     // b4
    state_in[55:48],     // b9
    state_in[15:8],      // b14
    state_in[103:96],    // b3

    // Column 2
    state_in[63:56],     // b8
    state_in[23:16],     // b13
    state_in[111:104],   // b2
    state_in[71:64],     // b7

    // Column 3
    state_in[31:24],     // b12
    state_in[119:112],   // b1
    state_in[79:72],     // b6
    state_in[39:32]      // b11

};

endmodule
