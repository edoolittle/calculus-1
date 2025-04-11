import graph;
size(0,200);

real f(real x) { return 2+ 1/(-x+0.5) ; }
real g(real x) { return 2-1/(-x+0.5) ; }
real h(real x) { return sin(5*(-x-0.5))/(5*(-x-0.5)) + 2 ; }

draw(graph(g,-4,0),invisible);
draw(graph(f,-4,0),invisible);
draw(graph(h,-4,0),orange);
draw((0,2)--(-4,2),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

