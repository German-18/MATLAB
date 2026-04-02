n=input('numero');
contador=0;
suma=0;
v=[];
w=[];
if mod(n,2)==0
    for l=2:2:n
        v=l;
        w=l^3;
        contador=contador+1;
        suma = suma + w;
    end
else
    for m=2:2:(n-1)
        v=l;
        w=l^3;
        contador=contador+1;
        suma = suma + w;
    end
end
disp(v)
disp(contador)
disp(suma)
