clear;
%Polinom Interpolasi Lagrange
x = input('matriks x: ');
y = input('matriks y: ');
xr = input('titik yang ingin dicari nilainya ');

fprintf('nilai fungsi di xr adalah %8.6f\n', PolinomInterpolasiLagrange(xr,x,y))
disp('polinom interpolasinya adalah')
syms z
PolinomInterpolasiLagrange(z,x,y)
