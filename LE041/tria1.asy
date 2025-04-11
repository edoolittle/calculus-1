size(200,260);

path p = (0,0)--(200,0)--(130,40)--cycle;

filldraw(p,lightyellow);
draw(p,black);

path[] q = (0,0)--(200,0)--(200,40)--(0,40)--cycle^^(130,40)--(130,0);
draw(q,black);

