`timescale 1ns/1ps

module traffic_tb;

reg clk = 0;
reg reset = 0;
reg emergency = 0;

wire [1:0] lightA;
wire [1:0] lightB;

traffic_controller uut (
    clk,
    reset,
    emergency,
    lightA,
    lightB
);

always #5 clk = ~clk;

initial begin
    reset = 1;
    #10 reset = 0;

    #100 emergency = 1;
    #50 emergency = 0;

    #300 $finish;
end

endmodule
