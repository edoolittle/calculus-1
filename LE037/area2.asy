import graph;
size(200,260,IgnoreAspect);

real cx = 200;
real cy = 260;

draw((0,0)--(cx,0)--(cx,cy)--(0,cy)--cycle,black);

label("$x$",(cx/2,0),S);
label("$y$",(0,cy/2),W);
label("$x$",(cx/2,cy),N);
label("$y$",(cx,cy/2),E);

