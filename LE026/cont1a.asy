import graph;
size(0,200);

// Cardano's Formula
real f1(real x) { return -(-(-x^3/2+sqrt(x^6/4-8x^3)))^(1/3)
                        -(-(-x^3/2-sqrt(x^6/4-8x^3)))^(1/3) ; }

dot((-6,-6),white);
dot((6,6),white);

draw(graph(f1,3.2,4), orange);

xaxis(RightTicks);
yaxis(LeftTicks);
