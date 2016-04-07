function y = equacao_diferencas(x,a,b,y01)
% y = equacao_diferencas(x,a,b,y01)
%
% Determina o sinal de saída de um sistema descrito pela equação às 
% diferenças
%
% y(n) + a y(n-1) = b x(n-1);  y(-1) = y01;
%
% Admite-se que x(n) = 0 para n <= -1
%
% Variáveis de entrada:
% x - vector com o sinal de entrada definido nos instantes 0 <= n <= Nmax
% a, b  - parâmetros que descrevem o sistema (escalares)
% y01 - condição inicial (escalar)
%
% Variável de saída:
% y - vector com o sinal de saída definido nos instantes 0 <= n <= Nmax

N=length(x);
y(1)=-a*y01;
for i=2:N
    y(i)=-a*y(i-1)+b*x(i-1);
end
end
