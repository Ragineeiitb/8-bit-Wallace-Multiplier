module testbench ;
reg [7:0]a;
reg [7:0] b;
wire [15:0] d_out;
wallace_multiplier DUT( a[7:0],b[7:0],d_out[15:0]);
initial 
begin
#5 a=6; b=7;
#5 a=4; b=3;
#6 a=2;b=6;
#5 a=5 ;b=9;
#5 a=8;b=10;
#5 a=7;b=7;
#5 a=8;b=9;
#5 a=15; b=13;
#5 a=12;b=12;
#5 a=16;b=16;
#5 a=17; b=19;
#100 $finish;
end
endmodule
