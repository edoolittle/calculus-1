import graph;

size (0,200);

real f(real x) { return sin(x); }

draw(graph(f,-1/2,1/2),red);
dot((0,0),red);

xaxis(BottomTop,LeftTicks);
yaxis(LeftRight,RightTicks);



