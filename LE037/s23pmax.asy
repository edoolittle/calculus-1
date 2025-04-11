import graph;
size(200,260,IgnoreAspect);

real Q(real x) { return 23x-x^2; }
real Qp(real x) { return 23-2x; }

draw(graph(Q,-10,30),orange);
draw(graph(Qp,-10,30),blue);

arrow("$Q$", (20,Q(20)) ,NE, orange);
arrow("$Q'$",(17,Qp(17)),SW,blue);

xaxis("$x$",black,RightTicks);
yaxis(LeftTicks);

dot((23.0/2,Q(23.0/2)),orange);
label("$(11.5,Q(11.5))$",(11.5,Q(11.5)),N,black);
