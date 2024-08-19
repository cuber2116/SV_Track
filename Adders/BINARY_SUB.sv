// binary subtraction using 1's compiliment
// Perfroming A-B

module BINARY_SUB(input logic[3:0] A, B, output logic[3:0] S);

logic [3:0]Bb;
logic [3:0]Y;
logic carry, cout;
input logic cin;
logic [3:0]zero;
logic carry_4bits;
assign zero = 4'b0000;
assign cin = 0;
NOT Bb0(B[0], Bb[0]);
NOT Bb1(B[1], Bb[1]);
NOT Bb2(B[2], Bb[2]);
NOT Bb3(B[3], Bb[3]);
RCA_1 M(A, Bb,  cin, carry, Y);
assign carry_4bits = {3'b0, carry};
RCA_1 M1(Y, zero, carry_4bits, cout, S);
endmodule
