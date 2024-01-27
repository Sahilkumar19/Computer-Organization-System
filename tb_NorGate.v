`include "NorGate.v"
module tb_NorGate;
  reg a, b;         
  wire c;            

  NorGate f3(a, b, c);


  initial begin
    $monitor("input: a=%b, b=%b, output: c=%b\n", a, b, c);
    #2 a = 1'b1;
    #2 b = 1'b1;
    #2 a = 1'b0;
    #2 b = 1'b0;
    #2 a = 1'b1;
    #2 b = 1'b0;
    #2 a = 1'b0;
    #2 b = 1'b1;
  end

initial begin
    $dumpfile("out4.vcd");
    $dumpvars;
    #5 $finish;
end
endmodule

/*THIS IS URBI’S PROGRAM */

// /* I AM SHOWING /* A BAD EXAMPLE */ OF COMMENTS */

/* BUT THIS IS // ABSOLUTELY LEGAL */