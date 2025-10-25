module top (
    input [15:0] sw,
    input btnU,btnD,btnL,btnR,btnC,
    output [15:0] led
);


wire [1:0] muxwire,demuxwire;
//wire enablewire;
wire [3:0]ywire;

assign muxwire[0] = btnL;
assign muxwire[1] = btnU;
assign demuxwire[0] = btnD;
assign demuxwire[1] = btnR;
//assign enablewire = btnC;

mux mux_inst( 
    .CEO(sw[3:0]),
    .YOU(sw[7:4]),
    .FRED(sw[11:8]),
    .JILL(sw[15:12]),
    .Sel(muxwire),
    .Enable(btnC),
    .Y(ywire)
);

de_mux de_mux_inst(
    .In(ywire),
    .Local_Lib(led[3:0]),
    .FD(led[7:4]),
    .SCHOOL(led[11:8]),
    .RIBS(led[15:12]),
    .Sel(demuxwire),
    .Enable(btnC)
);


endmodule