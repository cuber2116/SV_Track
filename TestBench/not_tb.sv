module not_tb();

reg a;
wire b;

NOT lol(a, b);

initial begin
a = 1; #10;
$display("Test 1, a = %b, b = %b", a, b);
a = 0; #10;
$display("Test 2, a = %b, b = %b", a, b);
$finish;
end
endmodule
