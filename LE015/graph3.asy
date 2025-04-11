import graph;

size (0,200);

real f(real x) { return 1; }

draw(graph(f,-3,3),red);

//xaxis(xmin=-3,xmax=3,LeftTicks);
xaxis(LeftTicks);
yaxis(ymin=-1,ymax=2,RightTicks);

path c=circle((2,1),0.05);
filldraw(c,white);
draw(c,red);

draw((-3,0)--(3,0),blue+2);

path c=circle((2,0),0.05);
filldraw(c,white);
draw(c,blue);
