import graph;
size(0,200);

real f1(real x) { return sqrt(x+5); }
real f2(real x) { return x+1; }

draw(graph(f1,-2,0),red);
draw(graph(f2,0,2),red);

xaxis(LeftTicks);
yaxis(RightTicks);

path c=circle((0,sqrt(5)),0.05);
filldraw(c,red);
draw(c,red);

path c=circle((0,1),0.05);
filldraw(c,white);
draw(c,red);
