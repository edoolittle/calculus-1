import graph;
size(200,260,IgnoreAspect);

real f(real x) { return x^4-2x^2-3; }

// roots
real r1 = sqrt(3);
real r2 = -sqrt(3);
dot((r1,0),orange);
dot((r2,0),orange);

// extrema
dot((-1,f(-1)),orange);
dot((0,f(0)),orange);
dot((1,f(1)),orange);

// inflection
dot((-1/sqrt(3),f(-1/sqrt(3))),orange);
dot((1/sqrt(3),f(1/sqrt(3))),orange);

draw(graph(f,-2,2),orange);

xaxis(Ticks(new real[]{-1,-.57,0,.57,1}));
//xaxis(RightTicks(new real[]{-.57,.57}));
//xaxis(RightTicks(new real[]{-1,0,1}));
yaxis(LeftTicks(new real[]{-3,-4}));
//yaxis(NoTicks);

label("dec",(-1.5,0),N);
label("cu",(-1.5,0),S);
label("inc",(-0.8,0),N);
label("cu",(-0.8,0),S);
label("inc",(-0.3,0),N);
label(shift(0,3)*"cd",(-0.3,0),S);
label("dec",(0.3,0),N);
label(shift(0,3)*"cd",(0.3,0),S);
label("dec",(0.8,0),N);
label("cu",(0.8,0),S);
label("inc",(1.5,0),N);
label("cu",(1.5,0),S);

