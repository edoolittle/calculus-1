import graph;

size (0,200);

real x0 = 1;
real y0 = 2;
real x1 = 3;
real y1 = 3;

real m = (y1-y0)/(x1-x0);

real f(real x) { return m*(x-x0) + y0; }

xaxis(xmin=-1,xmax=5,LeftTicks);
yaxis(ymin=-1,ymax=5,LeftTicks);

draw(graph(f,-1,5),red);

//dot((x0,y0),red);
//dot((x1,y1),red);

//draw((x0,y0)--(x1,y0)--(x1,y1),red);

// FIXME: damn, how can I use a variable here?
//label("run $=2$", ((x0+x1)/2,y0), S);
//label("rise $=1$", (x1,(y0+y1)/2), E);

