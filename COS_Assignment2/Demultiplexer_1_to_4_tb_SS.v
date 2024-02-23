/*
This file contains testbench code for
1 to 4 Demultiplexer

Author: Sahil & Shravan
Date: 08-02-2024
*/


`include "Demultiplexer_1_to_4_SS.v"
module Demultiplexer_1_to_4_tb;
    parameter DELAY = 10;

    reg I, S0, S1;
    wire O0, O1, O2, O3;

    //Instantiate the Demultiplexer_1_to_4 module
    Demultiplexer_1_to_4 demux_inst (
        .I(I),
        .S0(S0),
        .S1(S1),
        .O0(O0),
        .O1(O1),
        .O2(O2),
        .O3(O3)
    );
        initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, Demultiplexer_1_to_4_tb);
        end

    //Stimulus
    initial begin
        //Initialize inputs
        I = 1'b1;
        S0 = 1'b0;
        S1 = 1'b0;
        
        //Apply stimulus
        #DELAY S0 = 1'b1;
        #DELAY S1 = 1'b1;
        #DELAY;

        //Finish simulation
        #DELAY $finish;
    end

    initial begin
        $monitor("Time=%0t I=%b S0=%b S1=%b O0=%b O1=%b O2=%b O3=%b", $time, I, S0, S1, O0, O1, O2, O3);
    end

endmodule