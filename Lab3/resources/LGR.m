function [ ] = LGR(Num,Den)
% LGR(Num,Den)
%
% Representa graficamente o lugar geométrico dos polos do sistema em cadeia
% fechada
%
%                       _____      ________
%        x(t) +        |     |    |        |     y(t)
%        ------>(+)--->|  K  |--->|  G(s)  |-------->
%                ^     |_____|    |________|    |
%              - |                              |
%                |                              |
%                 ------------------------------
%
% para valores do ganho K>0, dados os polinómios do numerador (Num) e do
% denominador (Den) da função de transferência G(s) do sistema controlado.
%
% Caso existam, são determinados e indicados na janela de comandos do 
% MatLab os pontos do lugar geométrico dos polos em que os ramos se cruzam 
% com o eixo imaginário e com o eixo real. Para qualquer destes casos, é 
% também determinado o correspondente valor do ganho.
%
%
% Autor: Isabel Lourtie
% Novembro 2013


figure

NumI=Num;
clear Num

NDen=length(Den);
NNum=length(NumI);

if NNum<NDen
    Num=cat(2,zeros(1,NDen-NNum),NumI);
else
    Num=NumI;
end

% representação gráfica dos zeros quando existirem

if NNum>1
    Zero=roots(NumI);
    Re=real(Zero);
    Im=imag(Zero);
    plot(Re,Im,'or','MarkerSize',10)
    hold on
end

% cálculo dos pontos singulares

[DNum,DDen]=polyder(-1*Den,Num);
Psing = roots(DNum);

% ganho K nos pontos breakaway e breakin

n=0;
for i=1:length(Psing)
    if Psing(i) == conj(Psing(i))
        
        KNum = polyval(Den,Psing(i));
        KDen = polyval(Num,Psing(i));
        n=n+1;
        KPsing(n) = -KNum/KDen;
        Ps(n) = Psing(i);
        
        if KPsing(n) <= 0
            n=n-1;
        end
    end
end

if n ~= 0
    disp('pontos de cruzamento com o eixo real');
    for i=1:n
        disp(['ganho = ',  num2str(KPsing(i)),'        polo duplo = ', num2str(Ps(i))]);
    end
else
    disp('não há pontos de cruzamento com o eixo real');
end

if n~=0
    NPsing=length(KPsing);
    KPsing=sort(KPsing);
    
else
    NPsing=1;
    KPsing(1)=5;
end


LimKinf=0;


for i=1:NPsing+1
    
    if i<=NPsing
        LimKsup=KPsing(i);
    else
        LimKsup=5*LimKsup;
    end
    
    for k=LimKinf:(LimKsup-LimKinf)/1500:LimKsup %% /50
        RDen=Den+k*Num;
        polos=roots(RDen);
        Re=real(polos);
        Im=imag(polos);
        if k==0
            plot(Re,Im,'xr','MarkerSize',10)
        else
            plot(Re,Im,'x')
        end
        hold on
    end
    
    
    LimKinf=LimKsup;
end

xlabel('Re(s)')
ylabel('Im(s)')

%cálculo do ganho dos pontos de cruzamento com o eixo imaginário

for i=1:NDen
    Deny(i)=Den(i)*j^(NDen-i);
    Numy(i)=Num(i)*(-j)^(NDen-i);
end
Poly=conv(Deny,Numy);
NPoly=length(Poly);
n=0;
for i=1:NPoly
    if n==0
        if Poly(i)~=0;
            n=n+1;
            Pol(n)=imag(Poly(i));
        end
    else
        n=n+1;
        Pol(n)=imag(Poly(i));
    end
end

polosy=roots(Pol);

n=0;
for i=1:length(polosy)
    
    KNum = polyval(Den,j*polosy(i));
    KDen = polyval(Num,j*polosy(i));
    n=n+1;
    Ky(n) = -KNum/KDen;
    py(n) = j*polosy(i);
    
    if Ky(n) <=0
        n=n-1;
    end
end

if n ~= 0
    disp('pontos de cruzamento com o eixo imaginário');
    for i=1:n

        
        
        if real(py(i)) == 0 
        disp(['ganho = ',  num2str(Ky(i)), '        polo = ', num2str(py(i))]);
        end
    end
else
    disp('não há pontos de cruzamento com o eixo imaginário');
end

end

