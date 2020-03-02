clear;
A = input('input matriks koefisien:');
b = input('input vektor konstanta:');
x = input('vektor tebakan:');
n = length(b);
eps = 0.000001;
maxstep = 300;
meps(1:n,1) = eps;
disp('langkah    i    x(i)       abs(x(i)-x0(i))\n')
for l=1:maxstep
    for i=1:n
        x0(i,1) = x(i,1);
        sum1 = 0;
        sum2 = 0;
        for k=1:i-1
            sum1 = sum1 + A(i,k)* x(k,1);
        end
        for j = i+1:n
            sum2 = sum2 + A(i,j)* x(j,1);
        end
        x(i,1) = (b(i) - sum1 - sum2)/A(i,i);
        fprintf('%3d    %3d    %8.6f       %8.6f\n', l, i, x(i,1), abs(x(i,1)-x0(i,1)));
    end
    if abs(x - x0) < meps
        for i=1:n
        fprintf('solusi x %1d = %8.6f \n', i, x(i,1));
        end
        break;
    end
end 