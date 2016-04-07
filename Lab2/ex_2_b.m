addpath('resources');
n = [0:50];
b = 1;
a = -0.9;
h1 = b*[0 (-a).^[n(1):n(length(n)-1)]];
y1 = resposta_escalao(h1);
a = -1.1;
h2 = b*[0 (-a).^[n(1):n(length(n)-1)]];
y2 = resposta_escalao(h2);

subplot(2,1,1);
stem(n,y1); xlabel('n'); ylabel('y_1(n)'); title('a=-0.9');
subplot(2,1,2);
stem(n,y2); xlabel('n'); ylabel('y_2(n)'); title('a=-1.1');
rmpath('resources');