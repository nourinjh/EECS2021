module LabL2;

reg c;
reg [1: 0] a, b;
integer i, j, k;
wire z;
yMux2 bleh(z,a,b,c);

initial
begin
a = 0;
b = 0;
c = 0;

for (i = 0; i < 5; i = i + 1) 
begin
    for (j = 0;j < 5;j = j+ 1)
    begin
        for (k = 0;k < 3; k = k + 1) 
        begin
            a = i;
            b = j;
            c = k;
            #1 $display("a=%b b=%b c=%b z=%b", a, b, c, z);
        end
        
    end
    
end
$finish;
end

endmodule