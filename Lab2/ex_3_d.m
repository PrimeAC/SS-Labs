addpath('resources');
n = 0:50;
r = ones(1,length(n));

y1 = equacao_diferencas(r, -1.1 - 0.1, 1, 0);
y2 = equacao_diferencas(r, -1.1 + 0.1, 1, 0);
y3 = equacao_diferencas(r, -1.1 + 0.2, 1, 0);
y4 = equacao_diferencas(r, -1.1 + 2, 1, 0);
y5 = equacao_diferencas(r, -1.1 + 2.1, 1, 0);
y6 = equacao_diferencas(r, -1.1 + 2.2 , 1, 0);


subplot(3,2,1);
stem(n,y1); xlabel('n'); ylabel('y(n)'); title('K=-0.1');
subplot(3,2,2);
stem(n,y2); xlabel('n'); ylabel('y(n)'); title('K=0.1');
subplot(3,2,3);
stem(n,y3); xlabel('n'); ylabel('y(n)'); title('K=0.2');
subplot(3,2,4);
stem(n,y4); xlabel('n'); ylabel('y(n)'); title('K=2');
subplot(3,2,5);
stem(n,y5); xlabel('n'); ylabel('y(n)'); title('K=2.1');
subplot(3,2,6);
stem(n,y6); xlabel('n'); ylabel('y(n)'); title('K=2.2');


rmpath('resources');