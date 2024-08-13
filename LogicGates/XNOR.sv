module XNOR(input logic a, b, output logic c);

assign c = (~a & ~b) | (a & b);

endmodule
