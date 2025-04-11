import graph;
size(0,200);

real m = 2.1;

real bu(real x) { return 7 + 3(x-1); }
real buinv(real y) { return (y-7)/3 + 1; }
real bl(real x) { return 7 + 2(x-1); }
real se(real x) { return 7 + m*(x-1); }

draw(graph(bu,1,3),lightgray);
draw(graph(bl,1,4),lightgray);
filldraw((1,7)--(4,13)--(4,13.5)--(buinv(13.5),13.5)--cycle,lightgray);

//secant
//draw((1,7)--(4,se(4)),black);
dot((1,7),orange);
dot((4,se(4)),orange);

real f(real x) { return se(x) - 0.2*(x-1)*(x-4) ; }
real fp(real x) { return m - 0.5*(x-4) - 0.5(x-1) ; }

draw(graph(f,1,4),orange);

//real c = 2.5;
//real tc(real x) { return f(c)+fp(c)*(x-c); }
//draw(graph(tc,c-0.75,c+0.75),black);

xaxis(YEquals(6),RightTicks);
yaxis(LeftTicks);

