import graph;
size(0,200);

real m = 1.9;

real bu(real x) { return 7 + 3(x-1); }
real bl(real x) { return 7 + 2(x-1); }
real se(real x) { return 7 + m*(x-1); }

//secant
draw((1,7)--(4,se(4)),black);
dot((1,7),orange);
dot((4,se(4)),orange);

real f(real x) { return se(x) - 0.5*(x-1)*(x-4) ; }
real fp(real x) { return m - 0.5*(x-4) - 0.5(x-1) ; }
real c = 2.5;

real tc(real x) { return f(c)+fp(c)*(x-c); }

draw(graph(f,1,4),orange);

draw(graph(tc,c-0.75,c+0.75),black);

//draw(graph(bu,1,4),invisible);
draw(graph(bl,1,4),invisible);

xaxis(YEquals(6),RightTicks);
yaxis(LeftTicks);

