addpath('resources');
[x1, t1] = sinal(0.01, 10/0.01, pi);
subplot(2,1,1);
plot(t1,x1); xlabel('t'); ylabel('x_2(t)'); title('\omega_0 = \pi');
[x2, t2] = sinal(0.01, 10/0.01, 3*pi);
subplot(2,1,2);
plot(t2,x2); xlabel('t'); ylabel('x_2(t)'); title('\omega_0 = 3\pi');
rmpath('resources');