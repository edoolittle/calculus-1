import graph;
size(0,200);

real f(real x) { return 3*x*(x-1)*(x-2) + 1; } // x^3-3x^2+2x
real fp(real x) { return 3*(3x^2-6x+2); } // 

real c1 = (6-sqrt(36-4*3*2))/6;
real c2 = (6+sqrt(36-4*3*2))/6;

draw((0,f(0))--(2,f(2)),black);

draw(graph(f,0,2),orange);
dot((0,f(0)),orange);
dot((2,f(2)),orange);

draw((c1-0.2,f(c1))--(c1+0.2,f(c1)),black);
draw((c2-0.2,f(c2))--(c2+0.2,f(c2)),black);
dot((c1,f(c1)),orange);
dot((c2,f(c2)),orange);

xaxis(RightTicks);
yaxis(LeftTicks);
