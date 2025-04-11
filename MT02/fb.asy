import graph;
size(72*6,72*2,IgnoreAspect);

real f(real x) { return (x^2+1)/(x^2+3); }
real ce = 0;
real le = ce-6;
real re = ce+6;
real as = 1;
real ip1 = -1;
real ext = 0;
real ip2 = 1;

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


