module fa1_tb();

reg a, b, c;
wire cout, s;

FA_1 lol(a, b, c, s, cout);

initial begin
a=0; b=0; c=0; #10;
$display("Test 1: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=0; b=0; c=1; #10;
$display("Test 2: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=0; b=1; c=0; #10;
$display("Test 3: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=0; b=1; c=1; #10;
$display("Test 4: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=1; b=0; c=0; #10;
$display("Test 5: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=1; b=0; c=1; #10;
$display("Test 6: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=1; b=1; c=0; #10;
$display("Test 7: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
a=1; b=1; c=1; #10;
$display("Test 8: a=%b, b=%b, c=%b, sum=%b, carry=%b", a, b, c, s, cout);
$finish;
end
endmodule
