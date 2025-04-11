import graph;

real xt=2.25;
real yt=4;

real a=-2+xt;
real b=0+xt;
real c=(-2/sqrt(3))+xt;

real a0=-2.2+xt;
real b0=0.5+xt;

int steps = 5;

for(int i=0; i <= steps; ++i) {
  currentpicture.erase();
  size(0,200);

  real f(real x) { return 0.5*((x-xt)^3-(x-xt))+yt; }
  real fp(real x) { return 0.5*(3*(x-xt)^2-1); }
  real tfc(real x) { return fp(c)*(x-c)+f(c) ; }

  // secant line equation
  real s(real x) { return f(a) + (x-a)*(f(b)-f(a))/(b-a); }
  real h(real x) { return f(x) - ((real)i)/steps * s(x); }
  real hp(real x) { return fp(x) - ((real)i)/steps * (f(b)-f(a))/(b-a); }
  real thc(real x) { return hp(c)*(x-c)+h(c) ; }

  draw(graph(f,a0,b0),lightgray);
  draw(graph(h,a0,b0),orange);

  //kludge to keep picture stable
  real g(real x) { return f(x) - s(x); }
  draw(graph(g,a0,b0),invisible);

  draw((a,-0.1)--(a,0.1),blue);
  label("$a$",(a,-0.1),S);
  draw((b,-0.1)--(b,0.1),blue);
  label("$b$",(b,-0.1),S);
  draw((a,0)--(b,0),blue+1);
  dot((a,f(a)),lightgray);
  dot((a,h(a)),orange);
  dot((b,f(b)),lightgray);
  dot((b,h(b)),orange);

  draw((a,f(a))--(b,f(b)),lightgray);
  draw((a,h(a))--(b,h(b)),black);

  // extremum and tangent
  draw(graph(tfc,c-0.5,c+0.5),invisible);
  draw(graph(thc,c-0.5,c+0.5),invisible);
  //dot((c,f(c)),lightgray);
  //dot((c,h(c)),orange);

  draw((c,-0.1)--(c,0.1),blue);
  label("$c$",(c,0.1),N,black);

  xaxis(RightTicks);
  yaxis(LeftTicks);

  shipout("mvtand"+(string)i,"eps");
}


for(int i=steps; i >= 0; --i) {
  currentpicture.erase();
  size(0,200);

  real f(real x) { return 0.5*((x-xt)^3-(x-xt))+yt; }
  real fp(real x) { return 0.5*(3*(x-xt)^2-1); }
  real tfc(real x) { return fp(c)*(x-c)+f(c) ; }

  // secant line equation
  real s(real x) { return f(a) + (x-a)*(f(b)-f(a))/(b-a); }
  real h(real x) { return f(x) - ((real)i)/steps * s(x); }
  real hp(real x) { return fp(x) - ((real)i)/steps * (f(b)-f(a))/(b-a); }
  real thc(real x) { return hp(c)*(x-c)+h(c) ; }

  draw(graph(f,a0,b0),lightgray);
  draw(graph(h,a0,b0),orange);

  //kludge to keep picture stable
  real g(real x) { return f(x) - s(x); }
  draw(graph(g,a0,b0),invisible);

  draw((a,-0.1)--(a,0.1),blue);
  label("$a$",(a,-0.1),S);
  draw((b,-0.1)--(b,0.1),blue);
  label("$b$",(b,-0.1),S);
  draw((a,0)--(b,0),blue+1);
  dot((a,f(a)),lightgray);
  dot((a,h(a)),orange);
  dot((b,f(b)),lightgray);
  dot((b,h(b)),orange);

  draw((a,f(a))--(b,f(b)),lightgray);
  draw((a,h(a))--(b,h(b)),black);

  // extremum and tangent
  draw(graph(tfc,c-0.5,c+0.5),invisible);
  draw(graph(thc,c-0.5,c+0.5),black);
  //dot((c,f(c)),lightgray);
  dot((c,h(c)),orange);

  draw((c,-0.1)--(c,0.1),blue);
  label("$c$",(c,0.1),N,black);

  xaxis(RightTicks);
  yaxis(LeftTicks);

  shipout("mvtanu"+(string)i,"eps");
}

