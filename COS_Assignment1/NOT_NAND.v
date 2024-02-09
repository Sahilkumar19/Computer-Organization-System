`include "NAND.v"
module NOT_gate(a, b, c);
input a, b;
output c;

NAND_gate n1(a, a, c);


endmodule