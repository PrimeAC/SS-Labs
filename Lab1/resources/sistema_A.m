function y=sistema_A(x,n)
% y=sistema_A(x,n)
%
% Determina a sa�da do sistema discreto A dados o sinal de entrada e os
% correspondentes instantes de tempo. Admite-se que fora deste intervalo os
% sinais de entrada e de sa�da s�o nulos.
%
% Vari�veis de entrada:
% x - vector com o sinal de entrada
% n - vector com os instantes de tempo em que est� definido o sinal x
%
% Vari�vel de sa�da:
% y - vector com o sinal de sa�da definido nos instantes n
%
% Autor: Isabel Lourtie
% Janeiro 2016 

N=length(n);
Nmin=n(1);

m=1;
while n(m) < -Nmin
    m=m+1;
end

y=x;

k=1;
while n(k) < 0
    y(k) = x(m-k+1);
    k=k+1;
end