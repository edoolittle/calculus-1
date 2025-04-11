import graph;
size(0,200);

real t=9;

dot((-1,-1),white);
dot((10,10),white);
draw((0,t)--(10*cos(asin(t/10)),0),red);
xaxis(LeftTicks);
yaxis(RightTicks);

