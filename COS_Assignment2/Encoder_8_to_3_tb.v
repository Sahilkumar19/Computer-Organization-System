`include "Encoder_8_to_3.v"
module Encoder_8_to_3_tb;
reg [7:0] A_tb;
    wire [2:0] O_tb;

    Encoder_8_to_3 uut(A_tb, O_tb);

    initial begin
        $monitor("A=%b, O=%b", A_tb, O_tb);
        A_tb = 8'b00000001; #10;
        A_tb = 8'b00000100; #10;
        A_tb = 8'b10000000; #10;
        A_tb = 8'b11001100; #10;
        $finish;
    end

endmodule
