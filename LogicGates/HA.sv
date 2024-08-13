// half adder
module HA(input logic a, b, output logic carry, sum);

assign sum = a^b;
assign carry = a & b;

endmodule

