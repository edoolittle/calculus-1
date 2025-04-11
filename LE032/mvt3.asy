import graph;

size(0,200);

real xt=2.25;
real yt=4;

real a=-2+xt;
real b=0+xt;

real c=(-2/sqrt(3))+xt;

real a0=-2.2+xt;
real b0=0.5+xt;

real f(real x) { return 0.5*((x-xt)^3-(x-xt))+yt; }
real fp(real x) { return 0.5*(3*(x-xt)^2-1); }
real tc(real x) { return fp(c)*(x-c)+f(c) ; }

draw(graph(f,a0,b0),orange);

draw((a,-0.1)--(a,0.1),blue);
label("$a$",(a,0.1),N);
draw((b,-0.1)--(b,0.1),blue);
label("$b$",(b,0.1),N);
draw((a,0)--(b,0),blue+1);
dot((a,f(a)),orange);
dot((b,f(b)),orange);

draw((a,f(a))--(b,f(b)),black);

dot((c,f(c)),orange);
draw(graph(tc,c-0.5,c+0.5),black);

draw((c,-0.1)--(c,0.1),blue);
label("$c$",(c,0.1),N,black);

xaxis(RightTicks);
yaxis(LeftTicks);

