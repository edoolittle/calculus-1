import graph;
size(0,200);

real f1(real x) { return x^2 * cos(1/x^2); }
real f2(real x) { return x^2; }
real f3(real x) { return -x^2; }

real le = -1;
real re = 1;

draw(graph(f2,le,re),blue+dashed);
draw(graph(f3,le,re),blue+dashed);
draw(graph(f1,le,-0.001),red);
draw(graph(f1,0.001,re),red);

xaxis(BottomTop,LeftTicks);
yaxis(LeftRight,RightTicks);
