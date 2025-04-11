import graph;
size(0,200);

real f1(real x) { return sqrt(-x); }
real f2(real x) { return 3-x ; }
real f3(real x) { return (x-3)^2; }

draw(graph(f1,-3,0));
draw(graph(f2,0,3));
draw(graph(f3,3,5));

