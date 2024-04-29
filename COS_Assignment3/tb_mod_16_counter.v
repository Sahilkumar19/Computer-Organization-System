`include "mod_16_counter.v"
module tb_Mod16Counter;
    reg CLK;
    reg RST;
    wire [3:0] counter_out;

    Mod16Counter uut (
        .CLK(CLK),
        .RST(RST),
        .counter(counter_out)
    );

    initial begin
        $dumpfile("Mod16Counter.vcd");
        $dumpvars(0, tb_Mod16Counter);
        CLK = 0;
        RST = 1;
        #10;
        RST = 0;
        #160;
        $finish;
    end

    always #5 CLK = ~CLK;
    initial begin
        $monitor("Time=%0t, CLK=%b, RST=%b, Counter=%b", $time, CLK, RST, counter_out);
    end
endmodule
