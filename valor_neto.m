k=input('Inversion inicial');
r=input('Introduce el porcentaje');
p=input('Introduce el numero de flujos');
n=input('Introduce hasta el mes');
for m=1:p
    f=input('Introducelos');
    for b=1:n
       z=f/((1+r)^n);
       v(z)=z;
       
    end
end
res=van(k,r,n,f);