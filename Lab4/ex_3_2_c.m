addpath('resources');
[Xp21,w] = espectro_sinal_amostrado(0.5,10,30,pi);
[Xp22,w] = espectro_sinal_amostrado(0.5,10,30,3*pi);
RXp21 = real(Xp21);
RXp22 = real(Xp22);
Xmax = max([max(RXp21),max(RXp22)]);
Xmin = min([min(RXp21),min(RXp22)]);

subplot(2,1,1)
plot(w,RXp21); xlabel('\omega'); ylabel('X_2p(j\omega)');
title('\omega_0 = \pi'); axis([w(1) w(length(w)) Xmin Xmax]);

subplot(2,1,2)
plot(w,RXp22); xlabel('\omega'); ylabel('X_2p(j\omega)');
title('\omega_o = 3\pi'); axis([w(1) w(length(w)) Xmin Xmax]);
rmpath('resources');