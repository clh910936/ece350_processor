
//a and b are 32 bit integers to add
//c0=0 is add, c0=1 is subtract
//sum is a 32 bit result of adding/aubtracting a and b
//overflow is a 1 bit cout
module full_adder(a, bOriginal, c0, sum, overflow);
input [31:0] a, bOriginal;
input c0;
output [31:0] sum;
output overflow;
wire [31:0] bnot;
wire [31:0] b;
wire c8;
wire c16;
wire c24;

//assign b
//ie add or subtract
bitwise_invert invert(bOriginal, bnot);
assign b = c0 ? bnot : bOriginal;

c_8 cc8(a[7:0], b[7:0], c0, c8);
c_8 cc16(a[15:7], b[15:7], c8, c16);
c_8 cc24(a[23:15], b[23:15], c16, c24);
c_8 cc32(a[31:24], b[31:24], c24, overflow);

eight_bit_look_ahead_adder adder1(a[7:0], b[7:0], c0, sum[7:0]);
eight_bit_look_ahead_adder adder2(a[15:8], b[15:8], c8, sum[15:8]);
eight_bit_look_ahead_adder adder3(a[23:16], b[23:16], c16, sum[23:16]);
eight_bit_look_ahead_adder adder4(a[31:24], b[31:24], c24, sum[31:24]);

endmodule