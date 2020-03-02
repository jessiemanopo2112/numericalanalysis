%Polinom Interpolasi Newton
function p = IntNewton (z,x,y)
n=length(x);
p=0;
for k=1:n
    ST(k,1)=y(k);
end
for i=2:n 
    for j=1:n-k
    ST(i,k) = (ST(i+1,k-1)-ST(i,k-1))/(x(i+k)-x(i));
    end
end
for m=1:n
    s = ST(m,1);
    for i=1:m-1
        s = s*(z - x(i));
    end
    p = p + s;
end
end 