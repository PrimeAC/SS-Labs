addpath('resources');
n = [0:50];
b = 1;
a = -0.9;
h1 = b*[0 (-a).^[n(1):n(length(n)-1)]];
y1 = resposta_escalao(h1);
z = y1-[0 y1(1:length(n)-1)]; 

subplot(2,1,1);
stem(n,z); xlabel('n'); ylabel('z(n)');
subplot(2,1,2);
stem(n,h1); xlabel('n'); ylabel('h_1(n)');
rmpath('resources');