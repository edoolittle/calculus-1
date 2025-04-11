import graph;
size(0,200);

real l(real x) { return x+1; }

draw(graph(l,0,3),red);
draw(graph(l,-5,0),white);

xaxis(RightTicks);
yaxis(LeftTicks);

path c=circle((0,1),0.05);
filldraw(c,red);
draw(c,red);
