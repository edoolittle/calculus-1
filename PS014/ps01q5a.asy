import graph;

size(250,200,IgnoreAspect);

real f(real x) { return (x+2)/(x+3); }

draw(graph(f,-4,-3-0.1),red);
draw(graph(f,-3+0.1,1),red);

limits((-4,-4),(1,6),Crop);

draw((-3,-4)--(-3,6),blue+dashed);

xaxis("$x$",LeftTicks);
yaxis("$y$",RightTicks);



