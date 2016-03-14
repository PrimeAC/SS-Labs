load('resources/sinais.mat');
x = 0.5*x1 - 0.8*x2 - x3;
stem(n,x); xlabel('n'); ylabel('0.5x1(n)-0.8x2(n)-x3');