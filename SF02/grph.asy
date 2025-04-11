import graph;

size(72*6,72*4,IgnoreAspect);

real f1(real x) { return (abs(x+3.5))^(1/3) * (x+3.5)/abs(x+3.5); }
real f4(real x) { return ((x+1)/(x+2))*((abs(x-4))^(2/3) + 2); }

path p1 = graph(f1,-5,-1);
draw(p1,BeginArrow);
path p2 = graph(f4,-1, 4);
draw(p2);
path p3 = graph(f4,4,5);
draw(p3,EndArrow);

dot((2.5,f4(2.5)),black+5.0);
dot((2.5,f4(2.5)),white+2.5);
dot((2.5,f4(2.5)-2),black+5.0);

dot((-1,f1(-1)),black+5.0);
dot((-1,f1(-1)),white+2.5);
dot((-1,f4(-1)),black+5.0);
dot((-1,f4(-1)),white+2.5);
dot((-1,(f1(-1)+f4(-1))/2),black+5.0);

xaxis("$x$",RightTicks);
yaxis(LeftTicks);
