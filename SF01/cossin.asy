import graph;

size(3*72,0);

path p = graph(sin,0,pi/4)..graph(cos,pi/4,0)..cycle;

filldraw(p,paleyellow);

draw(graph(cos,-pi/4,pi/2),red);
draw(graph(sin,-pi/4,pi/2),blue);

dot((pi/4,cos(pi/4)));

xaxis(RightTicks);
yaxis(LeftTicks);


