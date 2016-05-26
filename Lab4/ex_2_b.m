addpath('resources');
[H4,Omega] = transformada_Fourier_discreta(h,4);
subplot(2,2,1)
plot(Omega,real(H4));
xlabel('\Omega'); ylabel('H(e^{j\Omega})'); title('M=4')
[H10,Omega] = transformada_Fourier_discreta(h,10);
subplot(2,2,2)
plot(Omega,real(H10));
xlabel('\Omega'); ylabel('H(e^{j\Omega})'); title('M=10')
[H25,Omega] = transformada_Fourier_discreta(h,25);
subplot(2,2,3)
plot(Omega,real(H25));
xlabel('\Omega'); ylabel('H(e^{j\Omega})'); title('M=25')
[H50,Omega] = transformada_Fourier_discreta(h,50);
subplot(2,2,4)
plot(Omega,real(H50));
xlabel('\Omega'); ylabel('H(e^{j\Omega})'); title('M=50') 
rmpath('resources');