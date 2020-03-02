clear;
x = input('titik duga:' );
epsilon = 0.00001;
maxstep = 300;
disp('step     xr       abs(xr+1 - xr)');
for i=1:maxstep
    x0 = x;
    x = x - ((5*10^6+887/x^2)*(x - 0.00267)-518*300)/((5*10^6+887/x^2)+(x-0.00267)*(-2*887/x^3));
    fprintf('%3d     %8.6f       %8.6f\n', i, x, abs(x-x0))
    if abs(x-x0) < epsilon;
        fprintf('hampiran akar %g\n',x);
        break;
    end
end
if i>=maxstep
    fprintf('gagal')
end
    
    

