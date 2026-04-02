function Y=fibonacci_1(n)
    Y=[0,ones(1,n)];
    for i=3:n+1
        Y(i)=Y(i-1)+Y(i-2);
    end
end