`include "NOR.v"
module XNOR_gate(a, b, c);
input a, b;
output c;

wire w1, w2, w3;

NOR_gate n1(a, b, w1);
NOR_gate n2(a, w1, w2);
NOR_gate n3(w1, b, w3);
NOR_gate n4(w2, w3, c);

endmodule