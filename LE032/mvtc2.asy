import graph;

size(0,200);

real c=3^(-3/2);

real f(real x) { return x^(1/3); }
real fp(real x) { return (1/3)*x^(-2/3); }

// secant line
draw((0,0)--(1,1),black);
// tangent line
real tf(real x) { return f(c)+fp(c)*(x-c); }
draw(graph(tf,c-0.2,c+0.2),black);
dot((c,f(c)),orange);

draw(graph(f,0,1),orange);
dot((0,0),orange);
dot((1,1),orange);


xaxis(RightTicks);
yaxis(LeftTicks);

draw((c,-0.05)--(c,+0.05),blue);
label("$c$",(c,0.05),N,blue);
draw((0,0)--(1,0),blue+1.0);
