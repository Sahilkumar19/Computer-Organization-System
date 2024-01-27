`include "NAND.v"
module XNOR_gate(a, b, c);
input a, b;
output c;

wire w1, w2, w3, w4;

NAND_gate n1(a, b, w1);
NAND_gate n2(a, w1, w2);
NAND_gate n3(w1, b, w3);
NAND_gate n4(w2, w3, w4);
NAND_gate n5(w4, w4, c);

endmodule