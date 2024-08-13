// Full adder using half adders
module FA_2(input logic a, b, c, output logic sum, carry);

logic carry1, carry2, sum1;

HA ha1(a, b, carry1, sum1);
HA ha2(c, sum1, carry2, sum);
OR or1(carry1, carry2, carry);

endmodule
