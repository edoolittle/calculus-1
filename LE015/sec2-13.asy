import graph;

real f(real x) { return x^2; }

real x0 = 1;
real y0 = 1;
pair Q = (x0,y0);

real df(real x) { return (2*x0)*(x-x0)+y0; }

real[] xs = {-1,-0.5,-0.25,0,0.25,0.5,0.75,0.9,1.1,1.25,1.5,1.75,2};

currentpicture.erase();

for(int i=0; i<xs.length; ++i){
  size (0,200);

  real x1 = xs[i];
  real y1 = f(xs[i]);
  pair P = (x1,y1);
  real m = (y1-y0)/(x1-x0);

  //EJD FIXME: replace numbers below by variables
  xaxis(xmin=-1,xmax=2,LeftTicks);
  yaxis(ymin=0,ymax=3,RightTicks);

  dot((x1,m),blue);
}

draw((-1,0)--(2,3),blue);
path c=circle((1,2),0.05);
filldraw(c,white);
draw(c,blue);

shipout("sec2-13","eps");

