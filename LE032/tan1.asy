import graph;
size(0,200);

real f(real x) { return tan(x)+1; }

draw(graph(f,0,atan(4)),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

draw((0,1)--(pi/2,1),black);
dot((pi/2,1),orange);
