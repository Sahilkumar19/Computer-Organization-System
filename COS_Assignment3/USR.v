`include "DFF.v"
module universal_SR(clr,clk,left_in,right_in,sel,par_in,out);

input clr, clk, left_in, right_in;
input [1:0] sel;
input [3:0] par_in;

output reg [3:0]out;

wire [3:0] dff_out;
DFF dff0 (.D(right_in), .clk(clk), .clr(clr), .Q(dff_out[0]));
DFF dff1 (.D(left_in), .clk(clk), .clr(clr), .Q(dff_out[1]));
DFF dff2 (.D(par_in[0]), .clk(clk), .clr(clr), .Q(dff_out[2]));
DFF dff3 (.D(par_in[1]), .clk(clk), .clr(clr), .Q(dff_out[3]));

always @(posedge clk) begin
    if(clr)
    out = 4'b0000;
    else
    begin
    case (sel)
        2'b00: out = out; //no change
        2'b01: out = {right_in, out[3:1]}; //right shift
        2'b10: out = {out[2:0], left_in}; //left shift
        2'b11: out = par_in; //parallel shift
    endcase
    end
end

endmodule