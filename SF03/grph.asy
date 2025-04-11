import graph;

size(72*6,72*4,IgnoreAspect);

real f1(real x) { return -1/(x+1) + 1; }
real f1inv(real y) { return 1/(-y+1) - 1; }
real f2(real x) { return log(x+1)+1; }
real f2inv(real y) { return exp(y-1)-1; }
real f3(real x) { return 6-2*((x-3)^2)^(1/3); }
real f4(real x) { return x/2 - 1/2; }
real f5(real x) { return 3x-18; }

path p1 = graph(f1,-4, f1inv(10));
draw(p1,Arrows);
dot((-1,2),black+5.0);
path p2 = graph(f2,f2inv(-5),2);
draw(p2,BeginArrow);
dot((2,f2(2)),black+5.0); dot((2,f2(2)),white+2.5);
dot((2,f3(2)),black+5.0);
path p3 = graph(f3,2,5);
draw(p3);
dot((5,f3(5)),black+5.0); dot((5,f3(5)),white+2.5);
dot((5,f4(5)),black+5.0);
path p4 = graph(f4,5,7);
draw(p4);
path p5 = graph(f5,7,8);
draw(p5,EndArrow);

//draw((-2,f1(-2.25))--(-2,f1(-1.75)),dashed);

pen pthin = linewidth(0.5*linewidth())+lightgray;
xaxis("$x$",xmin=-4,xmax=8,BottomTop,Ticks(begin=false,end=false,extend=true,pthin));
//dot((0,1),invisible);
yaxis("$y$",ymin=-5,ymax=10,LeftRight,Ticks(begin=false,end=false,extend=true,pthin));

xaxis("$x$",xmin=-4,xmax=8,LeftTicks);
yaxis("$y$",ymin=-5,ymax=10,RightTicks);
