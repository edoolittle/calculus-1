import graph;

size(4*72,4*72,IgnoreAspect);

real f(real x) { return x^2-2x; }
real g(real x) { return x; }

path p = graph(f,0,3)..graph(g,3,0)..cycle;
filldraw(p,paleyellow);

draw(graph(f,-1,4),blue);
draw(graph(g,-1,4),red);

xaxis(RightTicks);
yaxis(LeftTicks);


