import graph;

size (0,200);

real f(real x) { return sin(x); }

draw(graph(f,-1/4,1/4),red);
dot((0,0),red);

xaxis(BottomTop,LeftTicks);
yaxis(LeftRight,RightTicks);



