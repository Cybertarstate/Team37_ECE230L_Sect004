module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);

//array of vectors
wire [7:0] demux_out[3:0];
wire en_demux_out[3:0];
wire [7:0] mux_in[3:0];

en_demux enable(
    .enable(store),
    .sel(addr),
    .zero_latch(en_demux_out[0]),
    .one_latch(en_demux_out[1]),
    .two_latch(en_demux_out[2]),
    .three_latch(en_demux_out[3])
);

de_mux de_mux_inst(
    .data(data),
    .zero_latch(demux_out[0]),
    .one_latch(demux_out[1]),
    .two_latch(demux_out[2]),
    .three_latch(demux_out[3]),
    .sel(addr)
);

genvar i;
 generate
for(i=0; i<=3; i=i+1)begin

ocho_d_latch d_inst(
    .data(demux_out[i]),
    .enable(en_demux_out[i]),
    .Q(mux_in[i]),
    .NotQ()
);

 end 
endgenerate


mux mux_inst( 
    .from_zero(mux_in[0]),
    .from_one(mux_in[1]),
    .from_two(mux_in[2]),
    .from_three(mux_in[3]),
    .sel(addr),
    .y(memory)
);

endmodule