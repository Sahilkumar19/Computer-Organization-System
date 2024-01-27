module XOR_Gate(a, b, c);
input a;
input b;
output c;
assign c = a^b; //If input bits are the same, then the output will be false(0) else true(1).
endmodule