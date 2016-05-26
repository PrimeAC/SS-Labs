function [Xp,w] = espectro_sinal_amostrado(T,T0,wm,w0)
% [Xp,w] = espectro_sinal_amostrado(T,T0,wm,w0)
%
% Determina, para  w=-wm:wm/2000:wm, o espectro do sinal xp(t) que 
% resulta da amostragem de x(t) (-T0<=t<=T0) por um trem de Diracs 
% de período T. O sinal x é definido pela função 
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
%       T0 - instante de tempo que determina o domínio temporal do sinal
%            x(t)
%       wm - frequência angular que determina o intervalo de frequências 
%	         de Xp(jw)
%       w0 - frequência angular do coseno na definição do sinal de entrada
% Saídas:      
%       Xp - vector com o espectro do sinal x_p(t)
%       w  - vector com os valores da frequência
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






