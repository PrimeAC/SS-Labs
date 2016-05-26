w = -15:0.01:15;
X21 = (1/2)*(1./((w-pi).^2+1/4) + 1./((w+pi).^2+1/4));
X22 = (1/2)*(1./((w-3*pi).^2+1/4) + 1./((w+3*pi).^2+1/4));
subplot(1,2,1)
plot(w,X21); xlabel('\omega'); ylabel('X_2(j\omega)');
title('\omega_0 = \pi');
subplot(1,2,2)
plot(w,X22); xlabel('\omega'); ylabel('X_2(j\omega)');
title('\omega_0 = 3\pi'); 
