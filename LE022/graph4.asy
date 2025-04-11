import graph;
size(0,200);

real f(real x) { return sqrt(abs(x-0.5)) + 0.5; }

draw(graph(f,-2,2),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

