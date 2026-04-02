function y=fibonacci(n)
    if n==0
        y=0;
    elseif n==1
        y=1;
    else
        y=fibonacci(n-1)+fibonacci(n-2);
    end
end
