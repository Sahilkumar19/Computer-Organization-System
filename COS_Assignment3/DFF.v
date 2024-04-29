module DFF(D, clk, clr, Q);

input D,clk,clr;
output reg Q;

always @(posedge clk, posedge clr)begin
    if (clr)
    Q <= 1'b0;
    else
    Q <= D;
end
endmodule
