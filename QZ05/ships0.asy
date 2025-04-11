import graph;
size(0,200);

dot((125,125),white);
dot((-100,-100),white);

xaxis(RightTicks);
yaxis(LeftTicks);

dot((0,0),red);
dot((-35,0),red);

draw("$10$ km/h",(-35,5)--(-45,5),Arrow);
draw("$25$ km/h",(5,0)--(5,25),Arrow);
