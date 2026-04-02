m=input('cuanto pesa');
h=input('cuanto mide');
imc=indice(m,h);
if imc < 18
    fprintf('Debajo de lo normal y su IMC es %f \n',imc)
elseif imc > 18 || imc <= 25
    fprintf('Normal y su IMC es %f \n',imc)
elseif imc > 25 || imc <= 30
    fprintf('Sobrepeso y su IMC es %f \n',imc)
elseif imc > 30 || imc <= 35
     fprintf('Obesidad grado 1 y su IMC es %f \n',imc)
elseif imc > 35 || imc < 40
    fprintf('Obesidad grado 2 y su IMC es %f \n',imc)
elseif imc >= 40
    fprintf('Obesidad grado 3 y su IMC es %f \n',imc)
end