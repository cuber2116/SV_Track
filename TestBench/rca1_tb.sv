module rca1_tb();

logic [3:0] a; 
logic [3:0] b; 
logic c, cout;
logic [3:0] s;

RCA_1 dut(a, b, c, cout, s);

initial begin
a=4'b0110; b=4'b0101; c=0; #10;
$display("Test 1: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, c, s, cout);
a=4'b1111; b=4'b1111; c=1; #10;
$display("Test 2: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, c, s, cout);
a=4'b0; b=4'b1; c=1; #10;
$display("Test 3: a=%b, b=%b, cin=%b, sum=%b, cout=%b", a, b, c, s, cout);
$finish;
end
endmodule
