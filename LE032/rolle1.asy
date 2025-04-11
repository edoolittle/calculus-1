import graph;
size(0,200);

real xt=0.125;

real c=1/sqrt(3)+xt;

real f(real x) { return 3*((x-xt)-(x-xt)^3); }

// secant
draw((0+xt,0)--(1+xt,0),invisible+1);

// graph
draw(graph(f,0+xt,1+xt),orange);
dot((0+xt,0),orange);
dot((1+xt,0),orange);

// extremum
draw((c,-0.05)--(c,0.05),invisible);
label("$c$",(c,0.05),N,invisible);
//dot((c,f(c)),orange);

// tangent
draw((c-0.4,f(c))--(c+0.4,f(c)),invisible);
label("extremum",(c,f(c)),N,invisible);

xaxis(black,RightTicks);
yaxis(black,LeftTicks);

