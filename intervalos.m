m=input('Dato inicial');
n=input('Dato final');
for k=(m+1):2:(n-1)
        v(k)=k;
        p=[m,v,n];
        w=sum(p); 
end
fprintf('La suma de los pares es %f . \n',w)
for l=(m+2):2:(n-2)
    x(l)=l;
    y=[m,x,n];
    z=mean(y);
end
fprintf('La media de los impares es %f . \n',z)