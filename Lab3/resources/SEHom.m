function [y,s] = SEHom(A,C,s0,t)
% [y,s] = SEHom(A,C,s0,t)
%
% Determina a evolução temporal da saída e do vector de estado com sinal de
% entrada nulo, i.e., determina a solução da equação de estado homogénea
%                       d
%                      --- s(t) = A s(t)
%                       dt
% e a saída 
%                       y(t) = C s(t)
%
% Entradas; A  - matriz de dimensão NxN
%           C  - vector linha de dimensão 1xN
%           s0 - vector de estado inicial de dimensão Nx1
%           t  - vector linha com os instantes de tempo 
% Saídas:   y  - vector linha de dimensão 1xlength(t)com a evolução
%                temporal da saída do sistema
%           s  - matriz de dimensão Nxlength(t)com a evolução temporal do
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

