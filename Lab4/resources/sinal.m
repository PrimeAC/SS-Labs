function [x,t] = sinal(Dt,N,w0)
% [x,t] = sinal(DT,NT,w0)
%
% Determina o sinal 
%   x(t)=exp(-|t|/2)*cos(w0*t) 
% no intervalo de tempo -T0 <= t <= T0 em que 
%   T0 = N*Dt
%
% Entradas:
%   Dt - incremento temporal (s)
%   N - nº de pontos
%   w0 - frequência angular (rad/s)
%
% Saídas:
%   t - vector com os instantes de tempo (2NT+1 pontos)
%   x - vector com os valores do sinal nos instantes de tempo t
%
t = -N*Dt:Dt:N*Dt;
x = exp(-abs(t)/2).*cos(w0*t);
end