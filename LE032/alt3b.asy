import graph;

size(0,200);

draw((1,1)--(2,3),orange);
dot((1,1),orange);
dot((2,3),orange);
draw((1.6,(2*1.6)-1)--(1.9,(2*1.9)-1),black);
dot((1.75,(2*1.75)-1),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

draw((1.75,-0.1)--(1.75,0.1),blue);
label("$c$",(1.75,0.1),N,blue);

