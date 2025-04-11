import graph;
size(0,200);

//real f(real x) { if (abs(x)>0.01) {return sin(x)/x;} else {return 1;} }
real f(real x) { return 20*(sin(x))/x ; }
real g(real x) { return 20/x; }
real h(real x) { return -20/x; }

draw(graph(f,2,5.5*pi),orange);
draw(graph(g,2,5.5*pi),dotted+black);
draw(graph(h,2,5.5*pi),dotted+black);

xaxis(RightTicks);
yaxis(NoTicks);
