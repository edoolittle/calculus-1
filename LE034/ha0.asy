import graph;
size(0,200);

real f(real x) { return 2+ 1/(x+0.5) ; }
real g(real x) { return 2-1/(x+0.5) ; }

draw(graph(g,0,4),invisible);
draw(graph(f,0,4),orange);
draw((0,2)--(4,2),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

