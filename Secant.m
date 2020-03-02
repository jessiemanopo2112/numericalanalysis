clear;
x0 = input('titik duga 1: ' );
x1 = input('titik duga 2: ');
epsilon = 0.000001;
maxstep = 300;
disp('step     xr       abs(xr+1 - xr)');
for i=1:maxstep
    fx0 = Fungsisesuaisoal(x0);
    fx1 = Fungsisesuaisoal (x1);
    x = x1 - fx1*(x1-x0)/(fx1-fx0);
    x2 = x;
    x0 = x1;
    x1 = x2;
    fprintf('%3d     %8.6f       %8.6f\n', i, x0, abs(x1-x0))
    if abs(x1-x0) < epsilon;
        fprintf('hampiran akar %8.6f\n',x1);
        break;
    end
end
if i>=maxstep
    fprintf('gagal')
end
    
    

