addpath('resources');
load('sinais.mat');
load('resources/sinais.mat');
y = 0.5*sistema_B(x1,n) - 0.8*sistema_B(x2,n) - sistema_B(x3, n);
stem(n,y); xlabel('n'); ylabel('0.5y1(n)-0.8y2(n)-y3(n)');

rmpath('resources');