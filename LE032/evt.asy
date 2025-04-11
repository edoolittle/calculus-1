import graph;

size(0,200);

real f(real x) { return sin(pi*x)+2; }

draw(graph(f,0,2),orange);

dot((0.5,f(0.5)),blue);
dot((1.5,f(1.5)),blue);

draw((0,f(0.5))--(2,f(0.5)),blue);
draw((0,f(1.5))--(2,f(1.5)),blue);


dot((0.5,0),blue);
dot((1.5,0),blue);

//draw((0,f(0.25))--(2,f(0.25)),blue);
//dot((0.25,0),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

