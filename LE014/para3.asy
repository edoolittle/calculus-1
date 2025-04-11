import graph;

size (0,200);

real f(real x) { return x^2; }
real df(real x) { return 2(x-1)+1; }

draw(graph(f,-1,2),black);

xaxis(LeftTicks);
yaxis(RightTicks);

dot((1,1),red);

//draw(graph(df,0.4,1.6),red);

