`include "AndGate.v"
module tb_AndGate;
  reg a, b;         
  wire c;            

  
  AndGate f2(a, b, c);

 
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
    $dumpfile("out2.vcd");
    $dumpvars;
    #5 $finish;
    end
endmodule
