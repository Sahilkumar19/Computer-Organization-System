`include "NOR.v"
module NOT_gate(a, b, c);
input a, b;
output c;

NOR_gate n1(a, a, c);


endmodule