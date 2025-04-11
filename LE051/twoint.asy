import graph;

real p(real x) { return (x+1)*(x-2); }
// p(x) = (x+1)(x-2) = x^2-x-2
// p(x-2) = (x-1)(x-4) = x^2-5x+4
real f(real x) { return x-p(x-2)+1; }
// f(x) = x-(x^2-5x+4)+1 = -x^2+6x-3
real g(real x) { return x+p(x-2)+1; }
// g(x) = x+(x^2-5x+4)+1 = x^2-4x+5

// endpoints of graph
real le = -1;
real re = 5;

// intersection points
real li = 1;
real ri = 4;

// number of rectangles
int nmax = 8;

path p = graph(f,li,ri)..graph(g,ri,li)..cycle;

// graphs

currentpicture.erase();

size(200,260,IgnoreAspect);

draw(graph(f,le,re),orange);
draw(graph(g,le,re),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

shipout("twoint0", "eps");

// region

currentpicture.erase();

size(200,260,IgnoreAspect);

filldraw(p,paleyellow);

draw(graph(f,le,re),orange);
draw(graph(g,le,re),blue);

xaxis(RightTicks);
yaxis(LeftTicks);

shipout("twoint1", "eps");

// n rectangles

for(int n=2; n<=nmax; ++n) {
  currentpicture.erase();

  size(200,260,IgnoreAspect);

  for(int i=1; i<=n; ++i) {
    real x0 = li+(i-1)*(ri-li)/n;
    real x1 = li+i*(ri-li)/n;

    path r = (x0,g(x1))--(x1,g(x1))--(x1,f(x1))--(x0,f(x1))--cycle;
    filldraw(r,paleyellow);
  }

  draw(graph(f,le,re),orange);
  draw(graph(g,le,re),blue);

  xaxis(RightTicks);
  yaxis(LeftTicks);

  shipout("twoint"+(string)n, "eps");
  
}


for(int n=nmax; n<=nmax; ++n) {
  currentpicture.erase();

  size(200,260,IgnoreAspect);

  //for(int i=1; i<=n; ++i) {
  int i=(int)(nmax/2)+1;
    real x0 = li+(i-1)*(ri-li)/n;
    real x1 = li+i*(ri-li)/n;

    path r = (x0,g(x1))--(x1,g(x1))--(x1,f(x1))--(x0,f(x1))--cycle;
    filldraw(r,paleyellow);
  //}

  draw(graph(f,le,re),orange);
  draw(graph(g,le,re),blue);

  xaxis(RightTicks);
  yaxis(LeftTicks);

  shipout("twoint"+(string)(nmax+1), "eps");
  
}

