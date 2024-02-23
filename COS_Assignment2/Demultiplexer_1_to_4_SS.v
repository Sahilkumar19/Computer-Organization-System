/*
This file contains Demultiplexer for 
1 to 4 bit

Author: Sahil & Shravan
Date: 08-02-2024
*/


module Demultiplexer_1_to_4(
    input I, S0, S1,
    output reg O0, O1, O2, O3
);

    always @ (I, S0, S1) begin
        case ({S0, S1})
            2'b00: begin O0 = I; O1 = 1'b0; O2 = 1'b0; O3 = 1'b0; end
            2'b01: begin O0 = 1'b0; O1 = I; O2 = 1'b0; O3 = 1'b0; end
            2'b10: begin O0 = 1'b0; O1 = 1'b0; O2 = I; O3 = 1'b0; end
            2'b11: begin O0 = 1'b0; O1 = 1'b0; O2 = 1'b0; O3 = I; end
        endcase
    end

endmodule