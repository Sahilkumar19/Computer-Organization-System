`include "NotGate.v"

module tb_NotGate;
reg a; 
wire b;
NotGate f1(a, b);

initial begin
    $monitor("input=%b, output=%b\n", a, b);
    #2 a=1'b0;
    #2 a=1'b1;
end


initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #5 $finish;
end

endmodule