import graph;

size(0,200);

real f(real x) { return 0.75*(2x+sin(3x)); }

draw(graph(f,0,2),orange);
dot((2,f(2)),orange);

draw((0,f(0.25))--(2,f(0.25)),blue);

dot((0.25,0),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

