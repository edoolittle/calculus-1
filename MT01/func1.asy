import graph;
size(0,200);

real c = 1.0/2;

real f0(real x) { return c*x*x+2*x; }
real f1(real x) { return x*x*x-c*x; }

draw(graph(f0,1.75,2),red);
draw(graph(f1,2,2.25),red);

draw(circle((2,f0(2)),0.05),red);
filldraw(circle((2,f1(2)),0.05),red);

//xaxis(RightTicks);
//yaxis(LeftTicks);

xaxis(BottomTop,RightTicks);
yaxis(LeftRight,LeftTicks);
