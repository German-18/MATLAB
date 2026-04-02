function res=hermite(n, x)
    if n==0
        res=1;
    elseif n==1
        res=2*x;
    else
        res=2*x*hermite(n-1,x)-2*(n-1)*hermite(n-2,x);
    end
end