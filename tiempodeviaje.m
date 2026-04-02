m=1;
suma=0;
while m~=0
    m=input('Otro');
    suma=suma+m;
    if m ==0
        div=suma/60;
        horas=floor(div);
        min=mod(suma,60);
    end
end
disp(horas)
disp(min)