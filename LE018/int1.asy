import graph;
size(0,200);

real l(real x) { return 2x; }
real f1(real x) {return 1/x; }
real f2(real x) {return 0.25*sin(4*x)+3; }

draw(graph(l,-2,2),white);
//draw(graph(f1,-2,0-0.25),red);
//draw(graph(f1,0+0.25,2),red);
draw(graph(f2,-2,2),red);

xaxis(RightTicks);
yaxis(LeftTicks);

//path c=circle((1,2),0.05);
//filldraw(c,white);
//draw(c,red);

//path c=circle((1,1),0.05);
//filldraw(c,white);
//draw(c,white);
