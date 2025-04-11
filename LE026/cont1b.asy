import graph;
size(0,200);

// Cardano's Formula
real f1(real x) { return x^(1/3); }

draw(graph(f1, 0.01, 2), orange);


