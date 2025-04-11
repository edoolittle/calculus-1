import graph;

size(72*6,72*6,IgnoreAspect);

real f(real x) { return (5x-2)*(x-10)/(x+2)^2; }

real le = -15;
real re = 15;

// getting the height right
// h = (5x-2)(x-10)/(x+2)^2
// h(x^2+4x+4) = 5x^2-50x-2x+20
// (5-h)x^2-(52+4h)x+(20-4h)=0
// x = (52+4h)\pm sqrt((52+4h)^2-4*(5-h)*(20-4*h))/(10-2h)

real h = 20;
real ra = ((52+4*h) - sqrt((52+4*h)^2-4*(5-h)*(20-4*h)))/(10-2*h);
real la = ((52+4*h) + sqrt((52+4*h)^2-4*(5-h)*(20-4*h)))/(10-2*h);

draw(graph(f,le,la),orange);
draw(graph(f,ra,re),orange);

draw((-2,-5)--(-2,h),blue);
label("$x=-2$", (-2,h/2), W);
draw((le,5)--(re,5),blue);
label("$y=5$", (le/2,5), N);

xaxis(Ticks);
yaxis(Ticks(Label(align=right)));

dot((0,5),orange);
label("$(0,5)$", (0,5), NE);
dot((0.4,0),orange);
label("$(0.4,0)$", (0.4,0), NE);
dot((10,0),orange);
label("$(10,0)$", (10,0), N);
dot((2,-4),orange);
label("$(2,-4)$", (2,-4), S);
dot((4,-3),orange);
label("$(4,-3)$", (4,-3), SE);

