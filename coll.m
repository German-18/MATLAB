n=input('numero');
sucesion=[];
while n~=1
    if mod(n,2)==0
        n=n/2;
    elseif mod(n,2)~=0
        n=(3*n) + 1;
    end
    if n==1
    sucesion=n;
    end
end
 v=sum(sucesion)