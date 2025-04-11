import graph;
//size(200,260,IgnoreAspect);
size(200,0);

real f(real x) { return (x+3)/((x+3)*(x-2)); } // y=1/(x-2)
real finv(real y) { return 2+(1/y); }
real pole=2;
real hole=-3;
real lim=-1/5;
real epsilon=0.1;

real left=-4;
real right=4;
real bottom=-2;
real top=3;

draw(graph(f,left,hole-epsilon),orange);
draw(graph(f,hole+epsilon,finv(bottom)),orange);
draw(graph(f,finv(top),right),orange);

draw(circle((hole,lim),epsilon),orange);
draw((pole,bottom)--(pole,top),blue+dashed);

xaxis("$x$",RightTicks);
yaxis("$y$",LeftTicks);


