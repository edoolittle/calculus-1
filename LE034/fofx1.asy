import graph;
size(300,0);

real f(real x) { return (x^2-1)/(x^2+1); }
real fp(real x) { return 4*x/(x^2+1)^2; }
real fpp(real x) { return 4*(-3x^2+1)/(x^2+1)^3 ; }

draw(graph(f,-4,4),invisible);

dot((0,f(0)),orange+5.0);
dot((1/sqrt(3),f(1/sqrt(3))),invisible+5.0);
dot((-1/sqrt(3),f(-1/sqrt(3))),invisible+5.0);

draw((-4,1)--(4,1),invisible);



label("dec",-1.5,N);
label("cd",-1.5,S,invisible);
label("dec",-0.5/sqrt(3),N,invisible);
label("cu",-0.5/sqrt(3),S,invisible);
label("inc",0.5/sqrt(3),N,invisible);
label("cu",0.5/sqrt(3),S,invisible);
label("inc",1.5,N);
label("cd",1.5,S,invisible);



//xaxis(Ticks(new real[]{-.57,0,.57}));
xaxis(Ticks(new real[]{0}));
//yaxis(LeftRight,RightTicks);


