import graph;
size(0,200);

real t=7;

dot((-1,-1),white);
dot((10,10),white);
draw((0,t)--(10*sin(acos(t/10)),0),red);
xaxis(LeftTicks);
yaxis(RightTicks);

