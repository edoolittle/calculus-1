import graph;
size(0,200);

real f(real x) { return 1.2*x; }
real g(real x) { return x+(x-1)*(x+1); }

draw(graph(f,-1,1),white);
draw(graph(g,-1,1),red);

xaxis(RightTicks);
yaxis(LeftTicks);

path c=circle((-1,-1),0.05);
filldraw(c,red);
draw(c,red);

path c=circle((1,1),0.05);
filldraw(c,red);
draw(c,red);
