import graph;

size(0,200);

real f1(real x) { return cos(x); }

draw(graph(f1,-pi,pi),red);

xaxis(RightTicks);
yaxis(LeftTicks);
