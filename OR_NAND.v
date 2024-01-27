// Implemeting OR gate using NAND gate
// input: a & b
// output: c
`include "NAND.v"
module OR_gate(a, b, c);
input a, b;
output c;

wire w1, w2;

NAND_gate n1(a, a, w1);
NAND_gate n2(b, b, w2);
NAND_gate n3(w1, w2, c);

endmodule