module LabL4;

reg c;
reg [31 : 0] a, b;
integer i, j, k;
wire [31:0] z;
yMux #(32) my_mux(z, a, b, c);

initial
begin
a = 0;
b = 0;
c = 0;

repeat (10)
begin
    a = $random;
    b = $random;
    c = $random % 2;
    #1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
end
$finish;
end

endmodule