m=input('Ingrese multiplicador');
n=input('Ingrese multiplicando');
c=0;
multiplicador=m;
multiplicando=n;
while multiplicador ~= 0
    if mod(multiplicador,2)~=0
        c=c+multiplicando;
    end
    multiplicando= multiplicando * 2;
    multiplicador= floor(multiplicador/2);
end
disp(c)