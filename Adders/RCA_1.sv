// Ripple Carry Adder
module RCA_1(input logic [3:0] A, B, input logic Cin, output logic Cout, output logic[3:0] S);

logic c1, c2, c3;

assign c1 = (A[0]&B[0])|(Cin&B[0])|(A[0]&Cin);
assign S[0] = (A[0]^B[0])^Cin;

assign c2 = (A[1]&B[1])|(c1&B[1])|(A[1]&c1);
assign S[1] = (A[1]^B[1])^c1;

assign c3 = (A[2]&B[2])|(c2&B[2])|(A[2]&c2);
assign S[2] = (A[2]^B[2])^Cin;

assign Cout = (A[3]&B[3])|(c3&B[3])|(A[3]&c3);
assign S[3] = (A[3]^B[3])^c3;

endmodule
