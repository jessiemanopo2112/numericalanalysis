function p = PolinomInterpolasiLagrange (z,x,y)
n = length(x);
p = 0;
for i=1:n
    L=1;
    for j=1:i-1
        s = (z - x(j))/(x(i)-x(j));
        L = L*s;
    end
    for k=i+1:n
        s = (z - x(k))/(x(i)-x(k));
        L = L*s;
    end
    p = p + L*y(i);
end
end