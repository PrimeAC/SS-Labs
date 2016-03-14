addpath('resources');
n = [-50:50];
x1 = 2*sin(2*pi*n/3-1) + 3*cos(8*pi*n/5); 
[y,ny] = compressao_N(x1,n,2);
stem(ny, y);
rmpath('resources');