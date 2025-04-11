import graph;

size (0,200);

real f(real x) { return 3-x^2; }

draw(graph(f,-2,2.5),red);

//xaxis(xmin=-1,xmax=4,LeftTicks);
xaxis("$x$",LeftTicks);
//yaxis("$y$",ymin=-1,ymax=4,RightTicks);
yaxis("$y$",RightTicks);

path c=circle((1,2),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((1,1),0.05);
filldraw(c,red);
draw(c,red);
