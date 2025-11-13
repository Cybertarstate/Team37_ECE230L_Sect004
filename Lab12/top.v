module top(
    input btnU,
    input btnC,
    output [6:0]led
);
    
mod_div inst1(
    .clk(btnC),
    .reset(btnU),
    .stage0(led[3]),
    .stage1(led[4]),
    .stage2(led[5])
);   

ripple_counter inst2(
    .clk(btnC),
    .reset(btnU),
    .y(led[2:0])
); 
endmodule
