import graph;

size (0,200,IgnoreAspect);

real f(real x) { return (1/9)*x^2 + 1; }

real x0=1;
real y0=f(1);
real x1=4;
real y1=f(4);
real m = (y1-y0)/(x1-x0);

real sec(real x) { return m*(x-x1)+y1; }

draw(graph(f,-1,6),black);

xaxis(LeftTicks);
yaxis(RightTicks);

dot((x0,y0),red);
dot((x1,y1),blue);

draw(graph(sec,0.4,5),blue);

draw((x0,y0)--(x0,y1)--(x1,y1),blue);
label("rise",(x0,(y0+y1)/2),W);
label("run",((x0+x1)/2,y1),N);
