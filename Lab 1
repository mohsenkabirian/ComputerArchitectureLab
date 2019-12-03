module func(a,b,c,f);
input a,b,c;
output f;
wire w1,w2,w3,w4;
and #10(w1,a,b);
not #10(w2,a);
and #10(w3,b,c);
and #10(w4,w2,b);
or #10(f,w1,w2,w3,w4);
endmodule
