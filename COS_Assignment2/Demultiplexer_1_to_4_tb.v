`include "Demultiplexer_1_to_4.v"
module Demultiplexer_1_to_4_tb;
    parameter DELAY = 10;

    reg I, S1, S2;
    wire O1, O2, O3, O4;

    //Instantiate the Demultiplexer_1_to_4 module
    Demultiplexer_1_to_4 demux_inst (
        .I(I),
        .S1(S1),
        .S2(S2),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4)
    );

    //Stimulus
    initial begin
        //Initialize inputs
        I = 1'b1;
        S1 = 1'b0;
        S2 = 1'b0;

        //Apply stimulus
        #DELAY S2 = 1'b1;
        #DELAY S1 = 1'b1;
        #DELAY;

        //Finish simulation
        #DELAY $finish;
    end

    initial begin
        $monitor("Time=%0t I=%b S2=%b S1=%b O1=%b O2=%b O3=%b O4=%b", $time, I, S2, S1, O1, O2, O3, O4);
    end

endmodule