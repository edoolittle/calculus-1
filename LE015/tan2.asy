import graph;

string base = "tan2-";

real f(real x) { return x^2; }

real x0 = 1;
real y0 = 1;
pair Q = (x0,y0);

real df(real x) { return (2*x0)*(x-x0)+y0; }

real[] xs = {-1,-0.5,-0.25,0,0.25,0.5,0.75,0.9,1.1,1.25,1.5,1.75,2};

for(int i=0; i<xs.length; ++i){
  currentpicture.erase();
  size (0,200);

  real x1 = xs[i];
  real y1 = f(xs[i]);
  pair P = (x1,y1);
  real m = (y1-y0)/(x1-x0);
  real sc(real x) { return m*(x-x0)+y0; }

  draw(graph(f,-1,2),black);
  xaxis(LeftTicks);
  yaxis(RightTicks);
  dot(Q,red);
  draw(graph(df,x0-0.6,x0+0.6),red);

  dot(P,blue);
  real sc0 = min(x0-0.25,x1-0.25);
  real sc1 = max(x0+0.25,x1+0.25);
  draw(graph(sc,sc0,sc1),blue);

  shipout(base+(string)i,"eps");
}


currentpicture.erase();
string base = "sec2-";

for(int i=0; i<xs.length; ++i){
  //currentpicture.erase();
  size (0,200);

  real x1 = xs[i];
  real y1 = f(xs[i]);
  pair P = (x1,y1);
  real m = (y1-y0)/(x1-x0);

  //EJD FIXME: replace numbers below by variables
  xaxis(xmin=-1,xmax=2,LeftTicks);
  yaxis(ymin=0,ymax=3,RightTicks);

  dot((x1,m),blue);

  shipout(base+(string)i,"eps");
}

