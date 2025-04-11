import graph;
size(0,200);

real f(real x) { return x^3 +2x + 1; }

draw(graph(f,-1,1),orange);

xaxis(RightTicks);
yaxis(LeftTicks);
