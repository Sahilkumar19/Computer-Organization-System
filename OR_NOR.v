`include "NOR.v"
module OR_gate(a, b, c);
input a, b;
output c;

wire w1;

NOR_gate n1(a, b, w1);
NOR_gate n2(w1, w1, c);


endmodule