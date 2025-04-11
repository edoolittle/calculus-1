import three;
size(72*2,0);

currentprojection=oblique(40);

real xmax=1;
real ymax=1.5;
real zmax=2; // z = kx

guide3[] b = box((0,0,0), (xmax,ymax,zmax));
draw(b);

label("$x$",(xmax/2,0,zmax),S);
label("$2x$",(xmax,0,zmax/2),SE);
label("$h$",(0,ymax/2,zmax),W);
