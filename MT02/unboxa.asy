size(72*2,0);

real x = 1;
real k = 2; 
real h = 1.5;

path b0 = (0,0)--(x,0)--(x,k*x)--(0,k*x)--cycle;
path s1 = (0,0)--(0,-h)--(x,-h)--(x,0)--cycle;
path s2 = (x,0)--(x+h,0)--(x+h,k*x)--(x,k*x)--cycle;
path s3 = (x,k*x)--(x,k*x+h)--(0,k*x+h)--(0,k*x)--cycle;
path s4 = (0,k*x)--(-h,k*x)--(-h,0)--(0,0)--cycle;

draw(b0);
draw(s1);
draw(s2);
draw(s3);
draw(s4);

label("$x$",(x/2,0),S);
label("$"+(string)k+"x$",(x,k*x/2),E);
label("$h$",(x+h/2,0),S);
label("$h$",(x,k*x+h/2),E);
label("$h$",(-h/2,k*x),N);
label("$h$",(0,-h/2),W);
