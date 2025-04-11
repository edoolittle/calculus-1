import graph;

size (0,200);

real f(real x) { return x^2; }
real df(real x) { return 2(x-1)+1; }

real x1 = 0.9;
pair P = (x1,f(x1));

real m = (f(x1)-1)/(x1-1);
write(m);

real sec(real x) { return m*(x-1)+1; }

draw(graph(f,-1,2),black);

xaxis(LeftTicks);
yaxis(RightTicks);

dot((1,1),red);
draw(graph(df,0.4,1.6),red);

dot(P,blue);
draw(graph(sec,x1-0.25,1+0.75),blue);

