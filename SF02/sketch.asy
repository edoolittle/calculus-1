import graph;

size(5.5*72,8*72,IgnoreAspect);

real f(real x) { return x^3 +3x^2 -9x -2; }

draw(graph(f,-5,3),red);

dot((-3,f(-3)),red);
label("$(-3,25)$ max",(-3,f(-3)),N);
dot((1,f(1)),red);
label("$(1,-7)$ min", (1,f(1)),S);
dot((-1,f(-1)),red);
label("$(1,9)$ inflection",(-1,f(-1)),SW);

xaxis(RightTicks);
yaxis(LeftTicks);
