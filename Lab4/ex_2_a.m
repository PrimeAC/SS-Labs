n = [-50:50]; N1 = [-50:-1]; N2 = [1:50];
h = [sin(pi*N1/2)./(pi*N1) 1/2 sin(pi*N2/2)./(pi*N2)];
stem(n,h); xlabel('n'); ylabel('h(n)'); 