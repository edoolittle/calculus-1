import graph;
size(0,200);

real f1(real x) { return sqrt(x+5); }
real f2(real x) { return x+1; }
real f3(real x) { return -1/(2*abs(x)); }

//draw(graph(f1,-2,0),red);
//draw(graph(f2,0,2),red);

draw(graph(f3,-2,-1/(2*3)),red);
draw(graph(f3,1/(2*3),2),red);

xaxis(LeftTicks);
yaxis(RightTicks);

