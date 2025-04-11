import graph;
size(0,200);

int n=6;

for(int i=0; i<n; ++i){
  currentpicture.erase();
  size (0,200);

  dot((-1.5,-1.5),white);
  dot((+1.5,+1.5),white);

  filldraw(circle((0,0),i/(real)n+0.1),red);
  xaxis(LeftTicks);
  yaxis(RightTicks);

  shipout("colon"+(string)i,"eps");
}

