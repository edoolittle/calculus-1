import graph;
size(0,200);

real f(real x) { return x^3; }
real g(real x) { return x^3-x; }

draw(graph(g,0,1.7),invisible);
draw(graph(f,-1.5,0),invisible);
draw(graph(f,0,1.5),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

