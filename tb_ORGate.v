`include "ORGate.v"
module tb_ORGate;
  reg a, b;         
  wire c;            

  ORGate f3(a, b, c);


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
    $dumpfile("out4.vcd");
    $dumpvars;
    #5 $finish;
end
endmodule