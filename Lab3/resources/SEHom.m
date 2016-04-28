function [y,s] = SEHom(A,C,s0,t)
% [y,s] = SEHom(A,C,s0,t)
%
% Determina a evolu��o temporal da sa�da e do vector de estado com sinal de
% entrada nulo, i.e., determina a solu��o da equa��o de estado homog�nea
%                       d
%                      --- s(t) = A s(t)
%                       dt
% e a sa�da 
%                       y(t) = C s(t)
%
% Entradas; A  - matriz de dimens�o NxN
%           C  - vector linha de dimens�o 1xN
%           s0 - vector de estado inicial de dimens�o Nx1
%           t  - vector linha com os instantes de tempo 
% Sa�das:   y  - vector linha de dimens�o 1xlength(t)com a evolu��o
%                temporal da sa�da do sistema
%           s  - matriz de dimens�o Nxlength(t)com a evolu��o temporal do
%                vector de estado do sistema
%
%
% Autor: Isabel Lourtie
% Novembro 2013

s(:,1)=s0;
for i=2:length(t)
    s(:,i)=expm(A*t(1,i))*s(:,1);
end

y=C*s;

end

