addpath('resources');
n = [-50:50];
x2 = cos(pi*n.^2/10); 
[y,ny] = compressao_N(x2,n,2);
stem(ny, y);
rmpath('resources');