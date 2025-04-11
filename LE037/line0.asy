import graph;

real f(real x) { return 4x+7; }
real le=-2;
real re=0.5;

real theta0 = atan(-1/4)+pi/6;
real theta1 = atan(-1/4)-pi/6;

int imax = 10;

//for(int i=1; i<imax; ++i) {
int i=1;
  currentpicture.erase();
  size(200,260);

  real theta = theta0 + (theta1-theta0)*i/imax;
  real x0 = -7/(4-tan(theta));
  real y0 = f(x0);

  draw(graph(f,-2,0.5),orange);
  draw((0,0)--(x0,y0),blue);
  arrow("$(x,4x+7)$",(x0,y0),NW,invisible);
  dot((0,0),orange);

  xaxis(RightTicks);
  yaxis(LeftTicks);

  shipout("line"+(string)0,"eps");
//}

