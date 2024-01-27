`include "NOR.v"
module XOR_gate(a, b, c);
input a, b;
output c;

wire w1, w2, w3, w4;

NOR_gate n1(a, a, w1);
NOR_gate n2(b, b, w2);
NOR_gate n3(w1, w2, w3);
NOR_gate n4(a, b, w4);
NOR_gate n5(w3, w4, c);

endmodule