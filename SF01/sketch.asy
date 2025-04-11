import graph;

size(6*72,8.5*72,IgnoreAspect);

real f(real x) { return ((x^2-1)^2)^(1/3); }

draw(graph(f,-10,-1),red);
draw(graph(f,-1,1),red);
draw(graph(f,1,10),red);

dot((0,f(0)),red);
label("max $(0,1)$",(0,1),N);
dot((-1,f(-1)),red);
label("min $(-1,0)$",(-1,0), NW);
dot((1,f(1)),red);
label("$(1,0)$ min",(1,0), NE);

real p = sqrt(3);
dot((p,f(p)),red);
label("$(3^{1/2},2^{2/3})$ inflection",(p,f(p)),E);
dot((-p,f(-p)),red);
label("inflection $(-3^{1/2},2^{2/3})$",(-p,f(-p)),W);


xaxis(RightTicks);
yaxis(LeftTicks);


