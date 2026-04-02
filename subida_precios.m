a=input('Introduzca cuantos dias consulta');
n=[];
precio=[];
for k = 1:a
    v=input('Numero de dia');
    n=[n,v];
    w=input('Precio');
    precio=[precio,w];
end
incremento=subida(precio);
tabla=[n;precio];
fprintf('   %f .  %f .  \n',tabla)
fprintf('Maxima subida es %f \n',incremento)