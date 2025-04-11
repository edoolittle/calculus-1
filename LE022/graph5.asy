import graph;
size(0,200);

real f1(real x) { return -(-x+0.5)^(1/3)+0.5; }
real f2(real x) { return (x-0.5)^(1/3)+0.5; }

draw(graph(f1,-2,0.5),orange);
draw(graph(f2,0.5,2),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

