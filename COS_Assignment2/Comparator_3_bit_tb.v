`include "Comparator_3_bit.v"
module testbench_3_bit_Comparator;
reg[2:0] A_tb,B_tb;
wire L_tb,E_tb,G_tb;

Comparator_3_bit uut(A_tb,B_tb,L_tb,E_tb,G_tb);

initial begin
    $monitor("A=%b, B=%b, L=%b, E=%b, G=%b", A_tb, B_tb, L_tb, E_tb, G_tb);
        A_tb = 3'b000; B_tb = 3'b000; #10;
        A_tb = 3'b001; B_tb = 3'b000; #10;
        A_tb = 3'b000; B_tb = 3'b001; #10;
        A_tb = 3'b010; B_tb = 3'b011; #10;
        A_tb = 3'b111; B_tb = 3'b101; #10;
        $finish;
end
endmodule
