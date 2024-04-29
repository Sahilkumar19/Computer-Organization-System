module Mod16Counter (
    input wire CLK,
    input wire RST,
    output reg [3:0] counter
);
    always @(posedge ) begin
        if (RST) begin
            counter <= 4'b0000;
        end 
        else begin
            counter <= counter + 1;
        end
    end
endmodule
