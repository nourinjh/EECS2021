module labK;
reg [31:0] x; // a 32-bit register
reg [0:0] one;
reg [1:0] two;
reg [2:0] three;

initial
begin
    x = 1;
    $display("time = %5d, x = %b", $time, x); 
    x = 3;
    $display("time = %5d, x = %b", $time, x); 
    x = 6; 
    $display("time = %5d, x = %b", $time, x); 
    one = &x; 
    two = x[1:0]; 
    three = {one, two}; 
    $display("time = %5d, one = %b", $time, one);
    $display("time = %5d, one = %b", $time, two);
    $display("time = %5d, one = %b", $time, three);
    $finish;
end

endmodule