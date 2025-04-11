import graph;
import contour;
size(0,200);

real[] c = {0};
real f(real x, real y) { return x^2 + y^2 - 1; }

dot((-2,-2),white);
dot((2,2),white);

draw(contour(f, (-2,0), (2,2), c), orange);

xaxis(RightTicks);
yaxis(LeftTicks);

