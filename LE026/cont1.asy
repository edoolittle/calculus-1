import graph;
import contour;
size(0,200);

real[] c = {0};
real f(real x, real y) { return x^3 + y^3 - 6*x*y; }

dot((-6,-6),white);
dot((6,6),white);

draw(contour(f, (-6,-6), (6,6), c), orange);

xaxis(RightTicks);
yaxis(LeftTicks);

