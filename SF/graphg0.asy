import graph;
size(72*6,72*6,IgnoreAspect);

pen dotp = invisible;
pen graphp = invisible;
pen labelp = invisible;

real le = -5;
real re = 5; 

real g(real x) { return (x-1)/sqrt(2x^2+1); }

// intercepts
real xint = 1;
pair xintp = (1,g(1));
dot(xintp,dotp);
real yint = 0;
pair yintp = (0,g(0));
dot(yintp,dotp);

// extrema
real min = -1/2;
pair minp = (min,g(min));
dot(minp,dotp);
label("minimum",minp,S,labelp);

// inflection
real in1 = -1;
pair in1p = (in1,g(in1));
dot(in1p,dotp);
label("inflection",in1p,W,labelp);
real in2 = 1/4;
pair in2p = (in2,g(in2));
dot(in2p,dotp);
label("inflection",in2p,E,labelp);

// asymptotes
real lasy = -1/sqrt(2);
real rasy = 1/sqrt(2);
path asymp1 = (le,lasy)--(0,lasy);
draw(asymp1,dotp);
label("asymptote",asymp1,N,labelp);
path asymp2 = (0,rasy)--(re,rasy);
draw(asymp2,dotp);
label("asymptote",asymp2,N,labelp);

draw(graph(g,le,re),graphp);

pen pthin = linewidth(0.5*linewidth())+lightgray;
xaxis("$x$",BottomTop,Ticks(begin=false,end=false,extend=true,pthin));
dot((0,1),invisible);
yaxis("$y$",LeftRight,Ticks(begin=false,end=false,extend=true,pthin));

// fixme: shouldn't have hardcoded numbers
draw((le,0)--(re,0),black);
draw((0,-2)--(0,1),black);

