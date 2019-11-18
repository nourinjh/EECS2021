module labM;
reg [31 : 0] address, memIn;
reg clk, memRead, memWrite;
wire [31: 0] memOut;

mem data(memOut, address, memIn, clk, memRead, memWrite); //MAKE SURE THESE NAMES MATCH YOUR REGISTER

initial 
begin

    memWrite = 1; memRead = 0; address = 16; 
    clk = 0;
    memIn = 32'h12345678;
    #4 memRead = 1;
    #1 $display("Address %d contains %h", address, memOut); 
    address = address + 4; 
    #4 memRead = 0;
    memIn = 32'h89abcdef;
    #4 memRead = 1;
    #1 $display("Address %d contains %h", address, memOut); 
    #4;
 
    memWrite = 0; memRead = 1; address = 16;
    
    repeat (3) 
    begin
            #4 $display("Address %d contains %h", address, memOut); 
            address = address + 4;
    end


$finish;
end

always
begin
		#4 clk = ~clk;
end


endmodule
