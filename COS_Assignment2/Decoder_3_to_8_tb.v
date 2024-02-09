`include "Decoder_3_to_8.v"
module Decoder_3_to_8_tb;
reg [2:0] A_tb;
wire [7:0] O_tb;

    Decoder_3_to_8 uut(A_tb, O_tb);

    initial begin
        $monitor("A=%b, O=%b", A_tb, O_tb);
        A_tb = 3'b000; #10;
        A_tb = 3'b011; #10;
        A_tb = 3'b111; #10;
        A_tb = 3'b100; #10;
        $finish;
    end

endmodule