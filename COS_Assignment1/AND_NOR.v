`include "NOR.v"
module AND_gate(a, b, c);
input a, b;
output c;

wire w1, w2;

NOR_gate n1(a, a, w1);
NOR_gate n2(b, b, w2);
NOR_gate n3(w1, w2, c);

endmodule