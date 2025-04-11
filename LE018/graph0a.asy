import graph;
size(0,200);

real l(real x) { return x+1; }
real s(real x) { return sqrt(x^2)+1; }

draw(graph(l,-5,3),white);
draw(graph(s,-5,3),red);

xaxis(RightTicks);
yaxis(LeftTicks);
