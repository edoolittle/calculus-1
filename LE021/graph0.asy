import graph;
size(0,200);

real dummyA(real x) { return 1.5 ; }
real dummyB(real x) { return -1.5 ; }
//real f(real x) { return (2x-3)/x^2; }
//real f(real x) { return log(x) / x; }
real f(real x) { return 10 * exp(-1.125x) * log(1.125x); }
real df(real x) { return 10 * (-1.125 * exp(-1.125x) * log(1.125x)
 + exp(-1.125 x) * (1/x) ); }

real le = 0.75;
real re = 4;

draw(graph(dummyA,le,re),white);
draw(graph(dummyB,le,re),white);

real a = 1.1;
pair P = (a, f(a));
real m = df(a);
real t(real x) { return m*(x-a)+f(a); }

draw(graph(f,le,re));

dot(P);
draw((a-le,t(a-le))--(a+le,t(a+le)),red);

label("$P(a,f(a))$",P,W);
draw((a,0)--P,dashed);
label("$a$",(a,0),S);

xaxis();
yaxis();

