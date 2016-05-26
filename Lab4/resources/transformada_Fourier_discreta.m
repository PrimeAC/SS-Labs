function [XM,Omega] = transformada_Fourier_discreta(x,M)
% [XM,Omega] = transformada_Fourier_discreta(x,M)
%
% Determina a transformada de Fourier XM do sinal discreto x
% truncado no intervalo -M<=n<=M:
%
%       XM(e^(j Omega)) = sum_(n=-M^M) x(n) e^(-j Omega n)
%
% Entradas: 
%       x    - vector com os valores do sinal x(n) para -N<=n<=N 
%       M<=N - instante de tempo para truncar x(n).
%
% Saídas: 
%       XM    - vector com os valores da transformada de Fourier do sinal 
%               x(n) truncada para -M<=n<=M
%       Omega - vector com a frequência no intervalo [-pi , pi]
%
% Autor: Isabel Lourtie
% Janeiro de 2015

clear XM Omega

N=(length(x)-1)/2;

if (N-fix(N)) ~= 0
    ERRO = 'N não é ímpar'
    XM='NaN';
    Omega='NaN';
    return
end

if M > N
    ERRO = 'M > N'
    XM='NaN';
    Omega='NaN';
    return
end

Omega = -pi:pi/N:pi;

XM = 0;
for n = -M:M
    XM=XM+x(N+1+n)*exp(-j*Omega*n);
end


