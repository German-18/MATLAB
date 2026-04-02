n=input('Introduce el numero de sumandos');
for k=0:n
    v=((-1)^k)/((2*k)+1);
    u(v)=v;
    w=sum(u);
    serie=4*w;
end
fprintf('El valor de pi es %f . \n',serie)