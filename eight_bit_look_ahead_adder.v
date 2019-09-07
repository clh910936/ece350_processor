module eight_bit_look_ahead_adder(a, b, cin, sum, cout);
input [7:0] a, b;
input cin;
output [7:0] sum;
output cout;

//1st adder
one_bit_adder add1(a[0], b[0], cin, sum[0]);

//2nd adder
wire c21;
c c(a[0], b[0], cin, c21);
one_bit_adder add2(a[1], b[1], c21, sum[1]);

//3rd adder
wire c31;
wire c32;
c c1(a[0], b[0], cin, c31);
c c2(a[1], b[1], c31, c32);
one_bit_adder add3(a[2], b[2], c32, sum[2]);

//4th adder
wire c41;
wire c42;
wire c43;
c c3(a[0], b[0], cin, c41);
c c4(a[1], b[1], c41, c42);
c c5(a[2], b[2], c42, c43);
one_bit_adder add4(a[3], b[3], c43, sum[3]);

//5th adder
wire c51;
wire c52;
wire c53;
wire c54;
c c6(a[0], b[0], cin, c51);
c c7(a[1], b[1], c51, c52);
c c8(a[2], b[2], c52, c53);
c c9(a[3], b[3], c53, c54);
one_bit_adder add5(a[4], b[4], c54, sum[4]);

//6th adder
wire c61;
wire c62;
wire c63;
wire c64;
wire c65;
c c10(a[0], b[0], cin, c61);
c c11(a[1], b[1], c61, c62);
c c12(a[2], b[2], c62, c63);
c c13(a[3], b[3], c63, c64);
c c14(a[4], b[4], c64, c65);
one_bit_adder add6(a[5], b[5], c65, sum[5]);

//7th adder
wire c71;
wire c72;
wire c73;
wire c74;
wire c75;
wire c76;
c c15(a[0], b[0], cin, c71);
c c16(a[1], b[1], c71, c72);
c c17(a[2], b[2], c72, c73);
c c18(a[3], b[3], c73, c74);
c c19(a[4], b[4], c74, c75);
c c20(a[5], b[5], c75, c76);
one_bit_adder add7(a[6], b[6], c76, sum[6]);

//8th adder
wire c81;
wire c82;
wire c83;
wire c84;
wire c85;
wire c86;
c c201(a[0], b[0], cin, c81);
c c202(a[1], b[1], c81, c82);
c c203(a[2], b[2], c82, c83);
c c204(a[3], b[3], c83, c84);
c c205(a[4], b[4], c84, c85);
c c206(a[5], b[5], c85, c86);
c c207(a[6], b[6], c86, cout);
one_bit_adder add8(a[7], b[7], c87, sum[7]);

endmodule