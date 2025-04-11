import graph;

size(0,200);

real f(real x) { return x^3-x; }

draw(graph(f,-1.2,1.2),red);

xaxis(RightTicks);
yaxis(LeftTicks);

