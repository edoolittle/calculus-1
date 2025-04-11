import graph;

size(72*6,72*4,IgnoreAspect);

real f1(real x) { return 2/(x+2); }
real f2(real x) { return x+1; }
real f3(real x) { return 3; }

path p1 = graph(f1,-4,-2.25);
draw(p1,Arrows);
path p2 = graph(f1,-1.75,0);
draw(p2,BeginArrow);
path p3 = graph(f2,0,3);
draw(p3);
path p4 = graph(f3,3,4);
draw(p4,EndArrow);

draw((-2,f1(-2.25))--(-2,f1(-1.75)),dashed);

xaxis(RightTicks);
yaxis(LeftTicks);

dot((3,f2(3)),black+5.0);
dot((3,f2(3)),white+2.5);
dot((3,f3(3)),black+5.0);
