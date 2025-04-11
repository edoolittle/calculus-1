import graph;
size(0,200);

real f(real x) { return (x-0.5)*sin(1/(x-0.5)); }

draw(graph(f,-2,0.49),orange);
draw(graph(f,0.51,2),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

