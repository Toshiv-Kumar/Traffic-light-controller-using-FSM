module trafficlamps(clk,z);
  input clk;
  output reg [2:0]z;
  parameter RED=3'B100, GREEN=3'B010, YELLOW=3'B001;
  parameter s0=2'b00, s1=2'b01, s2=2'b10;
  reg [2:0]state;
  always @(posedge clk) // even by clk trigger it believes its sequential
    begin
    if(state==s0)
      state<=s1;
  else if (state==s1)
    state<=s2;
  else if (state==s2)
    state<=s0;
  else
    state<=s0;
    end
  always @(state)
begin
if (state==s0)
z=RED;
else if(state==s1)
z=GREEN;
else if(state==s2)
z=YELLOW;
end
 
endmodule
