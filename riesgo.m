m=input('Peso');
h=input('Altura');
e=input('Edad');
imc=indice(m,h);
if e < 45
    if imc < 22
        disp('Bajo')
    elseif imc >= 22
        disp('Medio')
    end
end
if e >= 45
    if imc < 22
        disp('Medio')
    elseif imc >= 22
        disp('Alto')
    end
end
