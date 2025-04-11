import graph;
size(0,200);

real dummyA(real x) { return 1.5 ; }
real dummyB(real x) { return -1.5 ; }
//real f(real x) { return (2x-3)/x^2; }
//real f(real x) { return log(x) / x; }
real f(real x) { return 10 * exp(-1.125x) * log(1.125x); }
real df(real x) { return 10 * (-1.125 * exp(-1.125x) * log(1.125x)
 + exp(-1.125 x) * (1/x) ); }

real le = 0.75;
real re = 4;

real fudge = 0.5;

real a = 1.1;
pair P = (a, f(a));
real m = df(a);
real t(real x) { return m*(x-a)+f(a); }

real[] xs = {
  a+0.5(re-0.5-a), 
  a+0.25(re-0.5-a), 
  a+0.125(re-0.5-a), 
  a+0.06125(re-0.5-a), 
  a+0.0306125(re-0.5-a), 
  };

for(int i=0; i<xs.length; ++i){
  currentpicture.erase();
  size (0,200);

  draw(graph(dummyA,le,re),white);
  draw(graph(dummyB,le,re),white);

  draw(graph(f,le,re));

  dot(P);

  draw((a-le,t(a-le))--(a+le,t(a+le)),red);

  draw(Label("$P(a,f(a))$",0),(P+(-0.5,0))--P,Arrow);
  draw((a,0)--P,dashed+orange);
  label("$a$",(a,0),S);

  xaxis();
  yaxis();

  real x1 = xs[i];
  real y1 = f(xs[i]);
  pair Q = (x1,y1);

  dot(Q);
  draw(Label("$Q(x,f(x))$",0),(Q+(0,0.5))--Q,Arrow);
  draw((x1,0)--Q,dashed+orange);
  label("$x$",(x1,0),S);

  draw((a,f(a))--(x1,f(a))--(x1,y1),orange);
  draw(Label("$x-a$",0),((a+x1)/2,-1)--((a+x1)/2,f(a)),Arrow);
  draw(Label("$f(x)-f(a)$",0), (re-fudge,(f(a)+y1)/2)--(x1,(f(a)+y1)/2) ,Arrow);

  real ms = (y1-f(a))/(x1-a);
  real sc(real x) { return ms*(x-x1)+y1; }

  draw(graph(sc,a-fudge,x1+fudge),blue);

  shipout("gr"+(string)i,"eps");
}
