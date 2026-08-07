module traffic_light_ped(

input clk,
input reset,
input button,
output reg red,
output reg yellow,
output reg green

);

localparam RED_STATE = 2'b00,
           GREEN_STATE = 2'b01,
           YELLOW_STATE = 2'b10,
           PED_STATE = 2'b11;

reg [1:0] current_state;
reg [1:0] next_state;

always @(posedge clk)
begin

if(reset)
current_state <= RED_STATE;
else
current_state <= next_state;

end

always @(*)
begin

case(current_state)

RED_STATE:
next_state = GREEN_STATE;

GREEN_STATE:
begin
if(button)
next_state = PED_STATE;
else
next_state = YELLOW_STATE;
end

PED_STATE:
next_state = YELLOW_STATE;

YELLOW_STATE:
next_state = RED_STATE;

default:
next_state = RED_STATE;

endcase

end

always @(*)
begin

red = 0;
yellow = 0;
green = 0;

case(current_state)

RED_STATE:
red = 1;

GREEN_STATE:
green = 1;

YELLOW_STATE:
yellow = 1;

PED_STATE:
red = 1;

endcase

end

endmodule
