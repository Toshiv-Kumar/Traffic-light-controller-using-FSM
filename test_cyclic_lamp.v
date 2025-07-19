module test_cyclic_lamp;
reg clk;
wire [2:0]z;
trafficlamps LAMP (clk,z);
always #5 clk=~clk;
initial
begin
clk=1'b0;
#100 $finish;
end
initial
begin
  $dumpfile("dump.vcd"); $dumvars (0, test_cyclic_lamp);
  $monitor($time,"RGY:%b",z);
end
endmodule
