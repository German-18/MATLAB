function sucesion=collatz(n)
while n~=1
    sucesion=n;
    if mod(n,2)==0
        n=n/2;
    elseif mod(n,2)~=0
        n=(3*n) + 1;
    end
    sucesion=n
end
