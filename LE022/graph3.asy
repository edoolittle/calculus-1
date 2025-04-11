import graph;
size(0,200);

real f1(real x) { return 0.5; }
real f2(real x) { return 1.5; }

draw(graph(f1,-2,0.5),orange);
draw(graph(f2,0.5,2),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

path c=circle((0.5,0.5),0.05);
filldraw(c,orange);
draw(c,orange);
