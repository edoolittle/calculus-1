import graph;
size(200,260,IgnoreAspect);

real C(real t) { return 30*t/(200+t); }

draw(graph(C,-400,-225),orange);
draw(graph(C,-175,400),orange);

draw((-200,C(-225))--(-200,C(-175)),blue);
draw((-400,30)--(400,30),blue);

label("inc",(-300,0),N);
label("cu",(-300,0),S);
label("inc",(-100,0),N);
label("cd",(-100,0),S);

label("$30$",(0,30),NE);

xaxis(Ticks(new real[]{-200}));
yaxis(NoTicks);
