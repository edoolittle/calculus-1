import graph;
size(72*6,72*4,IgnoreAspect);

real f1(real x) { return -sqrt(abs(x+1)) * (1-(1/x)) + 1; }
real f2(real x) { return -log(x); }
real f3(real x) { return -x; }

draw(graph(f1,-2,-0.25),black,EndArrow);
draw(graph(f2,exp(-2),3),black,BeginArrow);
draw(graph(f3,3,4),black);

dot((0,1),black+5.0);

dot((2,f2(2)),black+5.0);
dot((2,f2(2)),white+3.0);

dot((2,3),black+5.0);

dot((3,f2(3)),black+5.0);
dot((3,f2(3)),white+3.0);

dot((3,f2(3)),black+5.0);
dot((3,f2(3)),white+3.0);

dot((3,f3(3)),black+5.0);

xaxis("$x$",RightTicks);
yaxis(RightTicks);
