`include "XOR_Gate.v"
module tb_XOR_Gate;
  reg a, b;          
  wire c;           

 
  XOR_Gate f5(a, b, c);

  
  initial begin
    $monitor("input: a=%b, b=%b, output: c=%b\n", a, b, c);
    #2 a = 1'b0;
    #2 b = 1'b0;
    #2 a = 1'b1;
    #2 b = 1'b1;
    #2 a = 1'b0;
    #2 b = 1'b1;
    #2 a = 1'b1;
    #2 b = 1'b0; 
  end

initial begin
    $dumpfile("out5.vcd");
    $dumpvars;
    #5 $finish;
end
endmodule