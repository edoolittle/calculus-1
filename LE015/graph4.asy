import graph;

size (0,200);

real f(real x) { return x; }

draw(graph(f,-1,4),red);

//xaxis(xmin=-1,xmax=4,LeftTicks);
xaxis("$x$",LeftTicks);
yaxis("$y$",ymin=-1,ymax=4,RightTicks);

path c=circle((3,3),0.05);
filldraw(c,white);
draw(c,red);

//draw((-1,0)--(4,0),blue+2);

//path c=circle((3,0),0.05);
//filldraw(c,white);
//draw(c,blue);
