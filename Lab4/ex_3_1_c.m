addpath('resources');
[Xp1,w] = espectro_sinal_amostrado(0.3,10,30,0);
[Xp2,w] = espectro_sinal_amostrado(0.5,10,30,0);
[Xp3,w] = espectro_sinal_amostrado(1.5,10,30,0);
[Xp4,w] = espectro_sinal_amostrado(3,10,30,0);
RXp1 = real(Xp1);
RXp2 = real(Xp2);
RXp3 = real(Xp3);
RXp4 = real(Xp4);
Xmax = max([max(RXp1),max(RXp2),max(RXp3),max(RXp4)]);
Xmin = min([min(RXp1),min(RXp2),min(RXp3),min(RXp4)]);
subplot(2,2,1)
plot(w,RXp1); xlabel('\omega'); ylabel('X_1p(j\omega)');
title('T = 0.3'); axis([w(1) w(length(w)) Xmin Xmax]);
subplot(2,2,2)
plot(w,RXp2); xlabel('\omega'); ylabel('X_1p(j\omega)');
title('T = 0.5'); axis([w(1) w(length(w)) Xmin Xmax]);
subplot(2,2,3)
plot(w,RXp3); xlabel('\omega'); ylabel('X_1p(j\omega)');
title('T = 1.5'); axis([w(1) w(length(w)) Xmin Xmax]);
subplot(2,2,4)
plot(w,RXp4); xlabel('\omega'); ylabel('X_1p(j\omega)');
title('T = 3'); axis([w(1) w(length(w)) Xmin Xmax]); 
rmpath('resources');