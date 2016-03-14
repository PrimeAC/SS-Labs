function y=sistema_B(x,n)
% y=sistema_B(x,n)
%
% Determina a sa�da do sistema discreto B dados o sinal de entrada e os
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

y(1)=x(1)^2

for m=2:N
    y(m) = x(m)^2-x(m-1)^2
end

end