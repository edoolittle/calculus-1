import graph;
size(0,200);

real bu(real x) { return 7 + 3(x-1); }
real bl(real x) { return 7 + 2(x-1); }

//secant
draw((1,7)--(4,10),invisible);
dot((1,7),orange);
dot((4,10),orange);

real f(real x) { return 7+(x-1) - 0.5*(x-1)*(x-4) ; }
real fp(real x) { return 1 - 0.5*(x-4) - 0.5(x-1) ; }
real c = 2.5;

real tc(real x) { return f(c)+fp(c)*(x-c); }

draw(graph(f,1,4),invisible);

draw(graph(tc,c-0.75,c+0.75),invisible);

//draw(graph(bu,1,4),invisible);
draw(graph(bl,1,4),invisible);

xaxis(YEquals(6),RightTicks);
yaxis(LeftTicks);

