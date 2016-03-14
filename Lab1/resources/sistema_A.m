function y=sistema_A(x,n)
% y=sistema_A(x,n)
%
% Determina a saída do sistema discreto A dados o sinal de entrada e os
% correspondentes instantes de tempo. Admite-se que fora deste intervalo os
% sinais de entrada e de saída são nulos.
%
% Variáveis de entrada:
% x - vector com o sinal de entrada
% n - vector com os instantes de tempo em que está definido o sinal x
%
% Variável de saída:
% y - vector com o sinal de saída definido nos instantes n
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