import graph;
size(0,200);

real l(real x) { return 2x; }
real f1(real x) {return 1/x; }

draw(graph(l,-2,2),white);
//draw(graph(f1,-2,0-0.25),red);
draw(graph(f1,0+0.25,2),red);

xaxis(RightTicks);
yaxis(LeftTicks);

//path c=circle((0,0),0.05);
//filldraw(c,red);
//draw(c,red);

//path c=circle((1,1),0.05);
//filldraw(c,white);
//draw(c,white);
