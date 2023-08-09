module wallace_multiplier(input [7:0]a,input [7:0]b,output [15:0]d_out);
wire a0b0,a0b1,a0b2,a0b3,a0b4,a0b5,a0b6,a0b7,a1b0,a1b1,a1b2,a1b3,a1b4,a1b5,a1b6,a1b7,a1b8,a2b0,a2b1,a2b2,a2b3,a2b4,a2b5,a2b6,a2b7,a3b0,a3b1,a3b2,a3b3,a3b4,a3b5,a3b6,a3b7,a4b0,a4b1,a4b2,a4b3,a4b5,a4b6,a4b7,a5b0,a5b1,a5b2,a5b3,a5b4,a5b6,a5b7,a6b0,a6b1,a6b2,a6b3,a6b4,a6b5,a6bb6,a6b7,a7b0,a7b1,a7b2,a7b3,a7b4,a7b5,a7b6,a7b7;
wire [17:1]s;
wire [17:1]cout;
wire [13:1]s2;
wire [13:1]c2;
wire [8:1]s3;
wire [8:1]c3;
wire [9:1]s4;
wire [8:1]c4;

//partial product generation
assign a0b0=a[0]&b[0];
assign a0b1=a[0]&b[1];
assign a0b2=a[0]&b[2];
assign a0b3=a[0]&b[3];
assign a0b4=a[0]&b[4];
assign a0b5=a[0]&b[5];
assign a0b6=a[0]&b[6];
assign a0b7=a[0]&b[7];

assign a1b0=a[1]&b[0];
assign a1b1=a[1]&b[1];
assign a1b2=a[1]&b[2];
assign a1b3=a[1]&b[3];
assign a1b4=a[1]&b[4];
assign a1b5=a[1]&b[5];
assign a1b6=a[1]&b[6];
assign a1b7=a[1]&b[7];

assign a2b0=a[2]&b[0];
assign a2b1=a[2]&b[1];
assign a2b2=a[2]&b[2];
assign a2b3=a[2]&b[3];
assign a2b4=a[2]&b[4];
assign a2b5=a[2]&b[5];
assign a2b6=a[2]&b[6];
assign a2b7=a[2]&b[7];

assign a3b0=a[3]&b[0];
assign a3b1=a[3]&b[1];
assign a3b2=a[3]&b[2];
assign a3b3=a[3]&b[3];
assign a3b4=a[3]&b[4];
assign a3b5=a[3]&b[5];
assign a3b6=a[3]&b[6];
assign a3b7=a[3]&b[7];

assign a4b0=a[4]&b[0];
assign a4b1=a[4]&b[1];
assign a4b2=a[4]&b[2];
assign a4b3=a[4]&b[3];
assign a4b4=a[4]&b[4];
assign a4b5=a[4]&b[5];
assign a4b6=a[4]&b[6];
assign a4b7=a[4]&b[7];

assign a5b0=a[5]&b[0];
assign a5b1=a[5]&b[1];
assign a5b2=a[5]&b[2];
assign a5b3=a[5]&b[3];
assign a5b4=a[5]&b[4];
assign a5b5=a[5]&b[5];
assign a5b6=a[5]&b[6];
assign a5b7=a[5]&b[7];

assign a6b0=a[6]&b[0];
assign a6b1=a[6]&b[1];
assign a6b2=a[6]&b[2];
assign a6b3=a[6]&b[3];
assign a6b4=a[6]&b[4];
assign a6b5=a[6]&b[5];
assign a6b6=a[6]&b[6];
assign a6b7=a[6]&b[7];

assign a7b0=a[7]&b[0];
assign a7b1=a[7]&b[1];
assign a7b2=a[7]&b[2];
assign a7b3=a[7]&b[3];
assign a7b4=a[7]&b[4];
assign a7b5=a[7]&b[5];
assign a7b6=a[7]&b[6];
assign a7b7=a[7]&b[7];



//stage 1

HA HA_1(a1b0,a0b1,s[1],cout[1]);
FA FA_1(a2b0,a1b1,a0b2,s[2],cout[2]);
FA FA_2(a3b0,a2b1,a1b2,s[3],cout[3]);
FA FA_3(a4b0,a3b1,a2b2,s[4],cout[4]);
FA FA_4(a5b0,a4b1,a3b2,s[5],cout[5]);

FA FA_5(a6b0,a5b1,a4b2,s[6],cout[6]);
FA FA_6(a7b0,a6b1,a5b2,s[7],cout[7]);
FA FA_7(a2b3,a1b4,a0b5,s[8],cout[8]);
FA FA_8(a3b3,a2b4,a1b5,s[9],cout[9]);
FA FA_9(a4b3,a3b4,a2b5,s[10],cout[10]);

FA FA_10(a4b4,a3b5,a2b6,s[11],cout[11]);
FA FA_11(a7b1,a6b2,a5b3,s[12],cout[12]);
FA FA_12(a7b2,a6b3,a5b4,s[13],cout[13]);
FA FA_13(a7b3,a6b4,a5b5,s[14],cout[14]);
FA FA_14(a7b4,a6b5,a5b6,s[15],cout[15]);

FA FA_15(a7b5,a6b6,a5b7,s[16],cout[16]);
FA FA_16(a4b5,a3b6,a2b7,s[17],cout[17]);


//stage 2
HA HA_2(s[2],cout[1],s2[1],c2[1]);
FA FA2_1(s[3],cout[2],a0b3,s2[2],c2[2]);
FA FA2_2(s[4],cout[3],a1b3,s2[3],c2[3]);
FA FA2_3(s[5],cout[4],s[8],s2[4],c2[4]);
FA FA2_4(s[6],cout[5],s[9],s2[5],c2[5]);
FA FA2_5(s[7],cout[6],s[10],s2[6],c2[6]);
FA FA2_6(cout[9],a1b6,a0b7,s2[7],c2[7]);
FA FA2_7(s[12],cout[7],cout[10],s2[8],c2[8]);
HA HA_8(s[11],a1b7,s2[9],c2[9]);
FA FA2_9(s[13],cout[12],s[17],s2[10],c2[10]);
FA FA2_10(s[14],cout[13],a4b6,s2[11],c2[11]);
FA FA2_11(s[15],cout[14],a4b7,s2[12],c2[12]);
FA FA2_12(a7b6,a6b7,cout[16],s2[13],c2[13]);

//stage 3
HA HA3_1(s2[2],c2[1],s3[1],c3[1]);
FA FA3_2(s2[3],c2[2],a0b4,s3[2],c3[2]);
FA FA3_3(s2[5],c2[4],a0b6,s3[3],c3[3]);
FA FA3_4(s2[6],c2[5],s[7],s3[4],c3[4]);
FA FA3_5(s2[8],c2[6],s2[9],s3[5],c3[5]);
FA FA3_6(s2[10],c2[8],cout[11],s3[6],c3[6]);
FA FA3_7(s2[11],c2[10],cout[17],s3[7],c3[7]);
FA HA3_8(c2[12],cout[15],s[16],s3[8],c3[8]);

//stage 4
HA HA4_1(s3[2],c3[1],s4[1],c4[1]);
FA FA4_2(s2[4],c2[3],c3[2],s4[2],c4[2]);
HA HA4_3(s3[3],cout[8],s4[3],c4[3]);
HA HA4_4(s3[4],c3[3],s4[4],c4[4]);
FA FA5_5(s3[5],c3[4],c3[4],s4[5],c4[5]);
FA FA6_6(s3[6],c3[5],c2[6],s4[6],c4[6]);
FA FA7_7(s3[7],c3[6],a3b7,s4[7],c4[7]);
FA FA8_8(s2[12],c2[11],c3[7],s4[8],c4[8]);


assign d_out[0]=a0b0;
assign d_out[1]=s[1];
assign d_out[2]=s2[1];
assign d_out[3]=s3[1];
assign d_out[4]=s4[1];
assign d_out[15:5]={a7b7,s2[13],s3[8],s4[8],s4[7],s4[6],s4[5],s4[4],s4[3],s4[2]}+{c2[13],c3[8],c4[8],c4[7],c4[6],c4[5],c4[4],c4[3],c4[2],c4[1]};

endmodule 







