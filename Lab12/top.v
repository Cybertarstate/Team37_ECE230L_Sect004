module top(
    input btnU,
    input btnC,
    output [6:0]led
);
    
module_counter inst1(
    .clk(btnC),
    .reset(btnU),
    .y(led[6:3])
);   

ripple_counter inst2(
    .clk(btnC),
    .reset(btnU),
    .y(led[2:0])
); 
endmodule
