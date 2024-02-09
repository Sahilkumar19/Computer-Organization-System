module Decoder_3_to_8(input [2:0] A,
                    output reg [7:0] O);

    always @(A)
    begin
        case(A)
            3'b000: O = 8'b00000001;
            3'b001: O = 8'b00000010;
            3'b010: O = 8'b00000100;
            3'b011: O = 8'b00001000;
            3'b100: O = 8'b00010000;
            3'b101: O = 8'b00100000;
            3'b110: O = 8'b01000000;
            3'b111: O = 8'b10000000;
            default: O = 8'b11111111; // For undefined inputs
        endcase
    end

endmodule