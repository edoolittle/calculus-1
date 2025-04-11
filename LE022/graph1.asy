import graph;

size(0,200);

real f(real x) { return x^3-x; }
real df(real x) { return 3x^2-1; }

draw(graph(f,-1.2,1.2),white);
draw(graph(df,-1.2,1.2),red);

xaxis(RightTicks);
yaxis(LeftTicks);

