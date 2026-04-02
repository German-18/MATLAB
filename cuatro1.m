n=input('Numero');
contador=0;
suma=0;
while mod(n,7)~=0
    n=input('Otro');
     contador = contador +1;
     suma =suma + n;
    if mod(n,7)==0
        m=suma/contador;
        disp(m)
    end
end
