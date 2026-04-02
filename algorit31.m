m=input('Primer numero');
n=input('Segundo numero');
if mod(n,2)==0 && mod(m,2)==0
        w=m:2:n;
        suma=sum(w)
        q=(m+1):2:(n-1);
        media=mean(q)
elseif mod(n,2)~=0 && mod(m,2)~=0
    x=m:2:n;
    media=mean(x)
    z=(m+1):2:(n-1);
    suma=sum(z)
elseif mod(n,2)~=0 && mod(m,2)==0
    v1=m:2:(n-1);
    suma=sum(v1)
    v3=(m+1):2:n;
    media=mean(v3)
elseif mod(n,2)==0 && mod(m,2)~=0
    w1=(m+1):2:n;
    suma=sum(w1)
    w3=m:2:(n-1);
    media=mean(w3)    
end