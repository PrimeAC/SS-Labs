addpath('resources');
load('sinais.mat');

subplot(2,2,1);
stem(n, sistema_A(x1,n)); xlabel('n'); ylabel('y_1(n)');
subplot(2,2,2);
stem(n,sistema_A(x2,n)); xlabel('n'); ylabel('y_2(n)');
subplot(2,2,3);
stem(n,sistema_A(x3,n)); xlabel('n'); ylabel('y_3(n)');
subplot(2,2,4);
stem(n,sistema_A(x4,n)); xlabel('n'); ylabel('y_4(n)');
rmpath('resources');