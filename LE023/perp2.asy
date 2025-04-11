import graph;
size(0,200);

real A = 1;
real B = 0;
real C = 1;

real le=-1;
real re=2;

//real f(real x) { return A*(x+B)^2+C; }
//real df(real x) {return 2A*(x+B); }
real f(real x) { return A*x^2+B*x+C; }
real df(real x) {return 2*A*x+B; }

real a = 1;

real fa = f(a);
real m = df(a);
real mp = -1/m;

real tf(real x) { return m*(x-a)+fa; }
real nf(real x) { return mp*(x-a)+fa; }


draw(graph(tf,le,re),white);
draw(graph(nf,le,re),white);

draw(graph(f,le,re),orange);

xaxis(RightTicks);
yaxis(LeftTicks);

