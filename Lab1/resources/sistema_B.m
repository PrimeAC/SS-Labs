function y=sistema_B(x,n)
% y=sistema_B(x,n)
%
% Determina a saída do sistema discreto B dados o sinal de entrada e os
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

y(1)=x(1)^2

for m=2:N
    y(m) = x(m)^2-x(m-1)^2
end

end