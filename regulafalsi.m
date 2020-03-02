clear;
a = input('titik duga 1:' );
b = input('titik duga2:' );
epsilon = 0.000001;
maxstep = 300;
eps = 0.000002;
disp('step        a               b               c           f(a)               f(b)     fc         lebar');
for i=1:maxstep
    fa = Fungsisesuaisoal(a);
    fb = Fungsisesuaisoal(b);
    c = b - (b-a)*fb/(fb-fa);
    fc = Fungsisesuaisoal(c);
    fprintf('%3d       %8.6f       %8.6f       %8.6f       %8.6f      %8.6f       %8.6f       %8.6f\n',i, a, b, c, fa, fb, fc, abs(a-b));
    if fa*fc < 0;
        b = c;
    else
        a = c;
    end
    if abs(fc) < eps
        fprintf('akar %8.6f', c);
        break;  
    end
    if i>=maxstep
        disp('gagal');
    end
end