import graph;

size (0,200);

//real f(real x) { return 3-x^2; }

//draw(graph(f,-2,2.5),red);

xaxis("$x$",xmin=-4,xmax=4,LeftTicks);
yaxis("$y$",ymin=-0.5,ymax=1.5,RightTicks);

draw((-4,0)--(0,0),red+1.5);
//draw((0,1)--(4,1),red+1.5);

path c=circle((0,0),0.05);
filldraw(c,white);
draw(c,red);

path c=circle((0,1),0.05);
filldraw(c,red);
draw(c,red);
