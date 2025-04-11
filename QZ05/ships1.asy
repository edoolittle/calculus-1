import graph;
size(0,200);

dot((125,125),white);
dot((-100,-100),white);

xaxis(RightTicks);
yaxis(LeftTicks);

dot((0,100),red);
dot((-75,0),red);

draw("$10$ km/h",(-75,5)--(-85,5),black,Arrow);
draw("$25$ km/h",(5,100)--(5,125),black,Arrow);

draw((0,100)--(-75,0),red);

label("$x$",(-75/2,0),N,red);
label("$y$",(0,100/2),E,red);
label("$z$",(-75/2,100/2),NW,red);
