import graph;

size(0,200);

real g(real x) { return -0.2x^3 + 2.2x^2-4.8x + 1; }

draw(graph(g,-1,3),orange);
draw((4.0/3-1.5,g(4.0/3))--(4.0/3+1.5,g(4.0/3)),black);
dot((4.0/3,g(4.0/3)),orange);
draw((4.0/3,-0.1)--(4.0/3,0.1),blue);
label("$4/3$",((4.0/3),0.1),N,blue);

draw(graph(g,3,8),orange);
dot((3,g(3)),orange);
dot((8,g(8)),orange);

draw((6-1.5,g(6))--(6+1.5,g(6)),black);
dot((6,g(6)),orange);
draw((6,-0.1)--(6,0.1),blue);
label("$6$",(6,0.1),N,blue);

draw((3,0)--(8,0),blue+1.0);

xaxis(RightTicks);
yaxis(LeftTicks);
