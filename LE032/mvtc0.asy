import graph;

size(0,200);

real f(real x) { return x^(1/3); }

draw(graph(f,0,1),orange);
dot((0,0),orange);
dot((1,1),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

draw((0,0)--(1,0),blue+1.0);
