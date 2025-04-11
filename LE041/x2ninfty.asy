import graph;
size(200,260,IgnoreAspect);

real f(real x) { return x^2; }

path p = graph(f,0,1);
path q = (0,0)--p--(1,0)--cycle;
filldraw(q,paleyellow);
draw(q,black);
draw(p,orange);

label("$(1,1)$",(1,1),E);

label("$A$",(0.75,f(0.75)*0.4));

arrow("$x_{4}$",(1,0),S,invisible);

xaxis(RightTicks);
yaxis(LeftTicks);
