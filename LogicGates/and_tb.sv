module and_tb();

reg a, b;
wire c;
AND lol(a, b, c);
initial begin
a=0; b=0; #10;
$display("Test 1: a=%b, b=%b, c=%b", a, b, c);
a=0; b=1; #10;
$display("Test 2: a=%b, b=%b, c=%b", a, b, c);
a=1; b=0; #10;
$display("Test 3: a=%b, b=%b, c=%b", a, b, c);
a=1; b=1; #10;
$display("Test 4: a=%b, b=%b, c=%b", a, b, c);
$finish;
end
endmodule
