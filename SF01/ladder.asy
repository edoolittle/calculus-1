import geometry;
size(3*72,3*72);

pair A = (0,0);
pair B = (16,0);
pair C = (0,12);

draw(A--B);
draw(A--C);
draw(B--C,red);

dot(B,red);
dot(C,red);

label("$y=12$",(0,6),W);
label("$x$", (8,0), S);
label("$20$",(8,6),NE);

draw((16,-1)--(18,-1),EndArrow);
label("2 ft/s",(17,-1), S);

draw("$\theta$",arc(C,B,A,4.0),blue,Arrow);

