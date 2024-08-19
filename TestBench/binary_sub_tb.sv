// Test bench for the binary subtractor

module binary_sub_tb();

logic [3:0] a; 
logic [3:0] b; 
logic [3:0] s;

BINARY_SUB dut(a, b, s);

initial begin
a = 4'b0110; b = 4'b0101; #10;
display_result();

a = 4'b1111; b = 4'b1111; #10;
display_result();

a = 4'b0011; b = 4'b0111; #10;
display_result();

$finish;
end

task display_result;
begin
if (dut.carry == 1) begin
$display("Positive output");
end else begin
$display("Negative output");
end
$display("Test: a=%b, b=%b, sum=%b", a, b, s);
end
endtask

endmodule

