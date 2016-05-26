function [Xp,w] = espectro_sinal_amostrado(T,T0,wm,w0)
% [Xp,w] = espectro_sinal_amostrado(T,T0,wm,w0)
%
% Determina, para  w=-wm:wm/2000:wm, o espectro do sinal xp(t) que 
% resulta da amostragem de x(t) (-T0<=t<=T0) por um trem de Diracs 
% de per�odo T. O sinal x � definido pela fun��o 
%
% [x,t]= sinal(DT,N,w0)
%
% nos instantes de tempo t=-N*DT:DT:N*DT
%
% O espectro do sinal amostrado 
%
%       Xp(jw) = sum_n=-N^N x(nT) e^(-jwnT)
%
% Entrada:
%       T  - intervalo de amostragem
%       T0 - instante de tempo que determina o dom�nio temporal do sinal
%            x(t)
%       wm - frequ�ncia angular que determina o intervalo de frequ�ncias 
%	         de Xp(jw)
%       w0 - frequ�ncia angular do coseno na defini��o do sinal de entrada
% Sa�das:      
%       Xp - vector com o espectro do sinal x_p(t)
%       w  - vector com os valores da frequ�ncia
%
% Autor: Isabel Lourtie
% Janeiro 2015

w= -wm:wm/2000:wm;

N = ceil(T0/T);

[x,t] = sinal(T,N,w0);

Xp=0;
for m=-N:N
    Xp = Xp+x(m+1+N)*exp(-j*w*t(m+1+N));
end
%
end






