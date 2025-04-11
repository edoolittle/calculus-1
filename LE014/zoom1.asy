import graph;

size (0,200);

real f(real x) { return sin(x); }

draw(graph(f,-1,1),red);
dot((0,0),red);

xaxis(BottomTop,LeftTicks);
yaxis(LeftRight,RightTicks);

draw((-1/2,-1/2)--(1/2,-1/2)--(1/2,1/2)--(-1/2,1/2)--cycle,blue+dashed);
draw((-1/4,-1/4)--(1/4,-1/4)--(1/4,1/4)--(-1/4,1/4)--cycle,blue+dashed);
draw((-1/8,-1/8)--(1/8,-1/8)--(1/8,1/8)--(-1/8,1/8)--cycle,blue+dashed);

