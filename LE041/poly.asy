size(200,260);

path p = (0,0)--(200,0)--(240,80)--(130,100)--(-20,50)--cycle;

filldraw(p,lightyellow);
draw(p,black);
draw((200,0)--(130,100),dashed);
draw((200,0)--(-20,50),dashed);
