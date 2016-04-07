addpath('resources');
n = 0:50;
x=ones(1,length(n)); 
y = equacao_diferencas(x, -0.9, 1, 0);
y1 = equacao_diferencas(x, -0.9, 1, -5);
y2 = equacao_diferencas(x, -0.9, 1, 5);

subplot(3,1,1);
stem(n,y); xlabel('n'); ylabel('y(n)'); title('y(-1)=0');
subplot(3,1,2);
stem(n,y1); xlabel('n'); ylabel('y_1(n)'); title('y(-1)=-5');
subplot(3,1,3);
stem(n,y2); xlabel('n'); ylabel('y_2(n)'); title('y(-1)=5');

rmpath('resources');