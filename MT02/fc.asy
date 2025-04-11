import graph;
size(72*6,72*2,IgnoreAspect);

real f(real x) { return (x^2+2x)/(x^2+2x+4); }
real ce = -1;
real le = ce-6;
real re = ce+6;
real as = 1;
real ip1 = -2;
real ext = -1;
real ip2 = 0;

draw(graph(f,le,re),red);
draw((le,as)--(re,as),dashed);

dot((ip1,f(ip1)),red);
//label("$x="+(string)ip1+"$",(ip1,f(ip1)),NE);
dot((ext,f(ext)),red);
//label("$x="+(string)ext+"$",(ext,f(ext)),S);
dot((ip2,f(ip2)),red);
//label("$x="+(string)ip2+"$",(ip2,f(ip2)),NW);

xaxis(RightTicks);
yaxis(LeftTicks);


