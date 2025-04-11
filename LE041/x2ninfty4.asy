import graph;
size(200,260,IgnoreAspect);

real f(real x) { return x^2; }

path p = graph(f,0,1);
path q = (0,0)--p--(1,0)--cycle;
filldraw(q,paleyellow);
draw(q,black);
draw(p,orange);

label("$(1,1)$",(1,1),E);

draw((0.25,0)--(0.25,f(0.25)),black);
draw((0.5,0)--(0.5,f(0.5)),black);
draw((0.75,0)--(0.75,f(0.75)),black);

arrow("$x_{4}$",(1,0),S,invisible);

label("$A_{1}$",(0.08+0.25/2,f(0.08+0.25/2)*0.4));
label("$A_{2}$",(0.25+0.25/2,f(0.25+0.25/2)*0.4));
label("$A_{3}$",(0.50+0.25/2,f(0.50+0.25/2)*0.4));
label("$A_{4}$",(0.75+0.25/2,f(0.75+0.25/2)*0.4));

xaxis(RightTicks);
yaxis(LeftTicks);
