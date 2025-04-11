import graph;
size(200,260,IgnoreAspect);

real f(real x) { return x^2 * sin(x^2); }

draw(graph(f,0,pi),orange);

xaxis(LeftTicks);
yaxis(RightTicks);
