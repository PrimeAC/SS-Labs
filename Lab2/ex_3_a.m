addpath('resources');
n = 0:50;
x=ones(1,length(n)); 
y1 = equacao_diferencas(x, -0.9, 1, 0);
y2 = equacao_diferencas(x, -1.1, 1, 0);


subplot(2,1,1);
stem(n,y1); xlabel('n'); ylabel('y_1(n)'); title('a=-0.9');
subplot(2,1,2);
stem(n,y2); xlabel('n'); ylabel('y_2(n)'); title('a=-1.1');

rmpath('resources');