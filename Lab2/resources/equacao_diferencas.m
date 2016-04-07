function y = equacao_diferencas(x,a,b,y01)
% y = equacao_diferencas(x,a,b,y01)
%
% Determina o sinal de sa�da de um sistema descrito pela equa��o �s 
% diferen�as
%
% y(n) + a y(n-1) = b x(n-1);  y(-1) = y01;
%
% Admite-se que x(n) = 0 para n <= -1
%
% Vari�veis de entrada:
% x - vector com o sinal de entrada definido nos instantes 0 <= n <= Nmax
% a, b  - par�metros que descrevem o sistema (escalares)
% y01 - condi��o inicial (escalar)
%
% Vari�vel de sa�da:
% y - vector com o sinal de sa�da definido nos instantes 0 <= n <= Nmax

N=length(x);
y(1)=-a*y01;
for i=2:N
    y(i)=-a*y(i-1)+b*x(i-1);
end
end
