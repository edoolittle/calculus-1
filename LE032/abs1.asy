import graph;
size(0,200);

real g(real x) { return 2*x - abs(x-2); }

draw((1,g(1))--(3,g(3)),black);

draw(graph(g,1,3),orange);
dot((1,g(1)),orange);
dot((3,g(3)),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

