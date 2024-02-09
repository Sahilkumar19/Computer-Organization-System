module Demultiplexer_1_to_4(
    input I, S1, S2,
    output reg O1, O2, O3, O4
);

    always @ (I, S1, S2) begin
        case ({S2, S1})
            2'b00: begin O1 = I; O2 = 1'b0; O3 = 1'b0; O4 = 1'b0; end
            2'b01: begin O1 = 1'b0; O2 = I; O3 = 1'b0; O4 = 1'b0; end
            2'b10: begin O1 = 1'b0; O2 = 1'b0; O3 = I; O4 = 1'b0; end
            2'b11: begin O1 = 1'b0; O2 = 1'b0; O3 = 1'b0; O4 = I; end
        endcase
    end

endmodule