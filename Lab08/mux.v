module mux(
    input [1:0] Sel,
    input [3:0] CEO, [3:0] YOU,[3:0] FRED, [3:0] JILL, 
    input Enable,
    output [3:0] Y

);

    assign Y = Enable ? 
                Sel == 'b00 ? CEO :
                Sel == 'b01 ? YOU : 
                Sel == 'b10 ? FRED : JILL : 0;
                    

endmodule