function [y,ny] = compressao_N(x,nx,a)
%[y,ny] = compressao_N(x,nx,a)
%
%Determina o sinal
%   y(n)=x(an), n inteiro
%em que a � um inteiro positivo que indica o factor de compress�o.
%
%Vari�veis de entrada:
%   x - vector com o sinal de entrada definido para os instantes nx
%   nx - vector com os instantes de tempo em que est� definido o sinal x
%       (assume que fora deste intervalo o sinal � nulo)
%   a - factor de compress�o
%Vari�veis de sa�da:
%   y - vector com o sinal de sa�da definido para os instantes ny
%   ny - vector com os instantes de tempo em que est� definido o sinal y
%       (assume que fora deste intervalo o sinal � nulo)
%
%
%Autor: Isabel Lourtie
%Janeiro 2014

clear y ny

K1 = nx(1);
K2 = nx(length(nx));

N1=ceil(K1/a);
N2=floor(K2/a);

for m=1:length(nx)
    if a*N1 == nx(m)
        M1=m;
    end
    if a*N2 == nx(length(nx)-m+1)
        M2= length(nx)-m+1;
    end
end
for i=M1:M2
    x2(i-M1+1)=x(i);
end

ny = [N1:N2];

for m=1:length(ny)
    y(m) = x2(a*m-a+1);
end
end

