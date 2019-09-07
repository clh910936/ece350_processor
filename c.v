module c(a, b, c0, c1);
input a;
input b;
input c0;
output c1;
wire g0;
wire p0;
wire andOut;

//Creates the g0 and p0
//g0 = ab
//p0 = a+b
and andG(g0, a, b);
or orP(p0, a, b);

//Creates c1
and and1(andOut, p0, c0);
or or1(c1, andOut, g0);
endmodule