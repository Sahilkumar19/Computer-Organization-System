`include "NAND.v"
module AND_gate(a, b, c);
input a, b;
output c;

wire w1, w2;
NAND_gate n1(a, b, w1);
NAND_gate n2(w1, w1, c);

endmodule