import graph;
size(0,200);

real f(real x) { return 1.2*x; }
real g(real x) { return x+(x-1)*(x+1); }
real h(real x) { return 0.25x-0.75; } 

draw(graph(f,-1,1),white);
draw(graph(g,0.5,1),red);
draw(graph(h,-1,0.5),red);

xaxis(RightTicks);
yaxis(LeftTicks);

path c=circle((0.5,h(0.5)),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((0.5,g(0.5)),0.05);
filldraw(c,red);
draw(c,red);

path c=circle((-1,-1),0.05);
filldraw(c,red);
draw(c,red);

path c=circle((1,1),0.05);
filldraw(c,red);
draw(c,red);

