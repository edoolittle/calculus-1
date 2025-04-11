import graph;
size(0,200);

real f(real x) { return sqrt(1-x^2); }

real theta = pi/6;

draw(graph(f,0,1), black);

path t1 = (0,0)--(cos(theta),0)--(cos(theta),sin(theta))--cycle;
path we = (0,0)--(1,0)..(cos(theta/3),sin(theta/3))..(cos(2theta/3),sin(2theta/3))..(cos(theta),sin(theta))--cycle;
path t2 = (0,0)--(1/cos(theta),0)--(cos(theta),sin(theta))--cycle;

filldraw(t1,orange);

draw(t1,black);
draw(we,black);
draw(t2,black);

label("$A$",0.5(cos(theta/2),sin(theta/2)));

label("$x$",0.1(cos(theta/2),sin(theta/2)));
label("$1$",0.5(cos(theta),sin(theta)),NW);
label("$\cos x$", 0.5(cos(theta),0),N);
label("$\sin x$", (cos(theta),0.5sin(theta)),W);
label("$\tan x$", 0.5((1/cos(theta),0)+(cos(theta),sin(theta))),NE);

xaxis(RightTicks);
yaxis(LeftTicks);

