module en_demux(
    input enable,
    input [1:0] sel,
    output zero_latch,one_latch,two_latch,three_latch
);

    assign zero_latch = (sel == 2'b00) ? enable : 1'b0;
    assign one_latch = (sel == 2'b01) ? enable : 1'b0;
    assign two_latch = (sel == 2'b10) ? enable : 1'b0;
    assign three_latch = (sel == 2'b11) ? enable : 1'b0;

endmodule