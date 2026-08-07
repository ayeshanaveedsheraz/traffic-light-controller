`timescale 1ns1ps
module tb_traffic_light_ped;
reg clk;
reg reset;
reg button;

wire red;
wire yellow;
wire green;
traffic_light_ped uut(
.clk(clk),
.reset(reset),
.button(button),
.red(red),
.yellow(yellow),
.green(green)
);
always #5 clk = ~clk;
initial begin

clk = 0;
reset = 1;
button = 0;

$monitor(Time=%0t Reset=%b Button=%b Red=%b Yellow=%b Green=%b,
          $time, reset, button, red, yellow, green);
#10;
reset = 0;

#10;
button = 1;

#10;
button = 0;

#30;
button = 1;

#10;
button = 0;

#30;

$finish;
end
endmodule