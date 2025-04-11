import graph;
size(0,200);

real l(real x) { return x+1; }

draw(graph(l,-5,3),red);

xaxis(RightTicks);
yaxis(LeftTicks);
