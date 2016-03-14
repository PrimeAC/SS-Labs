load('resources/sinais.mat');
y = @(n,x)(-1).^n.*abs(x);
y = 0.5*y(n,x1) - 0.8*y(n,x2) - y(n,x3);
stem(n,y); xlabel('n'); ylabel('0.5y1(n)-0.8y2(n)-y3(n)');