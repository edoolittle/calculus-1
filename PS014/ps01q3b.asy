import graph;

size(0,200);

real f1(real x) { return 1 + sin(x); }
real f2(real x) { return x/2 - 1 + (1/3)*sin(pi*x); }
real f3(real x) { return 1-(1/5)*(x-2)^2; }

draw(graph(f1,-2,0),red);
draw(graph(f2,0,2),red);
draw(graph(f3,2,4),red);

path c=circle((0,1),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((0,-1),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((2,0),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((2,1),0.05);
filldraw(c,red);
draw(c,red);

xaxis(RightTicks);
yaxis(LeftTicks);
