import graph;

size(0,200);

draw((1,1)--(2,3),orange);
dot((1,1),orange);
dot((2,3),orange);
draw((1.1,(2*1.1)-1)--(1.4,(2*1.4)-1),black);
dot((1.25,(2*1.25)-1),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

draw((1.25,-0.1)--(1.25,0.1),blue);
label("$c$",(1.25,0.1),N,blue);
