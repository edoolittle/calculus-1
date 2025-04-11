import graph;
size(0,200);

//real f(real x) { if (abs(x)>0.01) {return sin(x)/x;} else {return 1;} }
real f(real x) { return 20*(sin(x))/x ; }
real g(real x) { return 20/x; }
real h(real x) { return -20/x; }

draw(graph(f,-5.5*pi,-2),orange);
draw(graph(g,-5.5*pi,-2),dotted+black);
draw(graph(h,-5.5*pi,-2),dotted+black);

draw((0,0)--(-5.5*pi,0),blue+1.5);

xaxis(RightTicks);
yaxis(NoTicks);
