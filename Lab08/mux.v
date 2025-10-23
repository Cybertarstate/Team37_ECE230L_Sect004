module 4_mux(
    input [1:0] Sel,
    input CEO,YOU,FRED,JILL, Enable,
    
    output Local_Lib

);

    assign Local_Lib = (CEO & ~Sel[0] & ~Sel[1] |
                        YOU &  Sel[0] & ~Sel[1] |
                        FRED & ~Sel[0] &  Sel[1] |
                        JILL &  Sel[0] &  Sel[1] |) & Enable;

endmodule