import graph;
import x11colors;
size(200,260,IgnoreAspect);
srand(20);

real f(real x) { return 0.5-((x-1.5)^3-(x-1.5)); }
real le = 0.4;
real re = 2.3;
real n = 6;

for (int i=0; i<n; ++i) {
  real xi = le + ((i+0.0)/n)*(re-le);
  real xm = le + ((i+0.5)/n)*(re-le);
  real xj = le + ((i+1.0)/n)*(re-le);
  real xr = le + ((i+(rand()/randMax))/n)*(re-le);

  // left endpoint
  //path p = (xi,0)--(xj,0)--(xj,f(xi))--(xi,f(xi))--cycle;
  //path q =(xi,0)--(xi,f(xi));
  // midpoint
  path p = (xi,0)--(xj,0)--(xj,f(xm))--(xi,f(xm))--cycle;
  path q =(xm,0)--(xm,f(xm));
  arrow("$x_{"+(string)i+"}^*$",(xm,0),S);
  // right endpoint
  //path p = (xi,0)--(xj,0)--(xj,f(xj))--(xi,f(xj))--cycle;
  //path q =(xj,0)--(xj,f(xj));
  // random point
  //path p = (xi,0)--(xj,0)--(xj,f(xr))--(xi,f(xr))--cycle;
  //path q =(xr,0)--(xr,f(xr));
  //arrow("$x_{"+(string)i+"}^*$",(xr,0),S);

  //arrow("$x_{"+(string)i+"}$",(xi,0),S);
  filldraw(p,lightyellow);
  draw(p,black);
  draw(q,black+dashed);
}
//arrow("$x_{"+(string)n+"}$",(re,0),S);

draw(graph(f,le,re),orange);

//label("$"+(string)le+"$",(le,0),SW);
//label("$"+(string)re+"$",(re,0),SE);
dot((le,f(le)),orange);
dot((re,f(re)),orange);
//label("$("+string(re,1)+","+string(f(re),1)+")$",(re,f(re)),E);
//label("$(\frac{\pi}{2},0)$",(re,f(re)),NE);

xaxis(RightTicks);
//xaxis();
yaxis(Ticks);

