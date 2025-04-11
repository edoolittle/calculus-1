import graph;
size(200,260,IgnoreAspect);

real Q(real x) { return x + 100/x; }
// the 3 is just artistic license
real Qp(real x) { return 3(1-100/x^2); }

draw(graph(Q,3,30),orange);
draw(graph(Qp,3,30,operator ..),blue);

dot((10,Q(10)),orange);
label("$(10,Q(10))$",(10,Q(10)),S,black);

xaxis("$x$",black,RightTicks);
yaxis(LeftTicks);

arrow("$Q$",(17,Q(17)),S,orange);
arrow("$Q'$",(25,Qp(25)),N,blue);
