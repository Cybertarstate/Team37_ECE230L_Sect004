module mux(
    input [1:0] Sel,
    input CEO[3:0],YOU[3:0],FRED[3:0],JILL[3:0], 
    input Enable,
    output Local_Lib

);

    assign Local_Lib = Enable ? 
                sel == 'b00 ? CEO :
                sel == 'b01 ? YOU : 
                sel == 'b10 ? FRED : JILL : 0 
                    

endmodule