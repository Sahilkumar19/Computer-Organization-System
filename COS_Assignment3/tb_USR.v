`include "USR.v"
module universal_SR_tst;
//Input
reg clr;
reg clk;
reg left_in;
reg right_in;
reg [3:0] par_in;
reg [1:0] sel;
//Output
wire [3:0] out;
universal_SR uut (
    .clr(clr),
    .clk(clk),
    .left_in(left_in),
    .right_in(right_in),
    .par_in(par_in),
    .sel(sel),
    .out(out)
);


initial begin
    clk = 0;
    forever #5 clk = ~clk;
end


initial begin
    clr = 1'b1;
    left_in = 1'b0;
    right_in = 1'b0;
    par_in = 4'b0000;
    sel = 2'b00;

    #10;
    
    clr = 1'b0;  
    #10;

    //perform right shift
    right_in = 1'b1;
    sel = 2'b01;
    #10;

    //perform left shift
    right_in = 1'b0;
    left_in = 1'b1;
    sel = 2'b10;
    #10;

    //perform parallel shift
    left_in = 1'b0;
    par_in = 4'b1010;
    sel = 2'b11;
    #10;

end

always @(posedge clk) begin
    $display("time=%0t, sel=%b, out=%b", $time, sel, out);
end

initial begin
    $dumpfile("test_USR.vcd");
    $dumpvars(0, universal_SR_tst);
    #60 $finish;
end
endmodule
