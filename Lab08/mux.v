module 4_mux(
    input [1:0] Sel,
    input CEO[3:0],YOU[3:0],FRED[3:0],JILL[3:0], 
    input Enable,
    output Local_Lib

);

    assign Local_Lib = sel == 'b00 ? CEO : // If 0, then... else
                sel == 'b01 ? YOU : // If 1, then... else
                sel == 'b10 ? FRED : JILL // If 2, then... else
          

endmodule