module ha_tb();

reg a, b;
wire c, s;

HA lol(a, b, c, s);
initial begin
a=0; b=0; #10;
$display("Test 1: a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
a=0; b=1; #10;
$display("Test 2: a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
a=1; b=0; #10;
$display("Test 3: a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
a=1; b=1; #10;
$display("Test 4: a=%b, b=%b, sum=%b, carry=%b", a, b, s, c);
$finish;
end
endmodule
