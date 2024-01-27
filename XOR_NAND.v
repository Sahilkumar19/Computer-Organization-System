`include "NAND.v"
module XOR_gate(a, b, c);
input a, b;
output c;

wire w1, w2, w3, w4;

NAND_gate n1(a, a, w1);
NAND_gate n2(b, b, w2);
NAND_gate n3(w1, b, w3);
NAND_gate n4(a, w2, w4);
NAND_gate n5(w3, w4, c);

endmodule