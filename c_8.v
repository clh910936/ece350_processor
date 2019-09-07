//This takes in c_i and returns c_{i+8}
module c_8(a, b, c0, c8);
input [7:0] a, b;
input c0;
output c8;

wire c1;
wire c2;
wire c3;
wire c4;
wire c5;
wire c6;
wire c7;
c c21(a[0], b[0], c0, c1);
c c22(a[1], b[1], c1, c2);
c c23(a[2], b[2], c2, c3);
c c24(a[3], b[3], c3, c4);
c c25(a[4], b[4], c4, c5);
c c26(a[5], b[5], c5, c6);
c c27(a[6], b[6], c6, c7);
c c28(a[7], b[7], c7, c8);
endmodule