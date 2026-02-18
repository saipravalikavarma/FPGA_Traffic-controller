`timescale 1ns / 1ps
module traffic_controller(
    input clk,
    input reset,
    input emergency,
    output reg [1:0] lightA,
    output reg [1:0] lightB
);

reg [1:0] state;
reg [3:0] count;

always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        state <= 0;
        count <= 0;
    end
    else
    begin
        count <= count + 1;

        if(emergency)
            state <= 0;
        else if(count == 10)
        begin
            count <= 0;
            state <= state + 1;
        end
    end
end

always @(*)
begin
    case(state)
        0: begin lightA=2'b10; lightB=2'b00; end
        1: begin lightA=2'b01; lightB=2'b00; end
        2: begin lightA=2'b00; lightB=2'b10; end
        3: begin lightA=2'b00; lightB=2'b01; end
    endcase
end

endmodule
