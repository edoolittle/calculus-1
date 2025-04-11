import graph;

size(250,200,IgnoreAspect);

real f(real x) { return (x+2)/(x^2*(x+3)); }

draw(graph(f,-2.5,0-0.1),red);
draw(graph(f,0+0.1,2.5),red);

limits((-2.5,-2),(2.5,6),Crop);

draw((0,-4)--(0,6),blue+dashed);

xaxis("$x$",LeftTicks);
yaxis("$y$",RightTicks);



