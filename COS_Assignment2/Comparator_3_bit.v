module Comparator_3_bit(input [2:0] A,B, output reg L,E,G);
always @(A,B) 
begin
    if (A==B) begin
        L=0;
        E=1;
        G=0;
    end
    else if(A>B) begin
        L=0;
        E=0;
        G=1;
    end
    else begin
        L=1;
        E=0;
        G=0;
    end
end
endmodule