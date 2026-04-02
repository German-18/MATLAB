n=input('Introduce el valor a elevar');
for k=2:n
    v(k)=k;
    u=factorial(v);
    w=1./u;
    p=[2,w];
    q=sum(p);    
end
x=exp(1);
error=abs(q-x);
fprintf('El valor de la funcion es %f   \n',x)
fprintf('El valor del sumatorio es %f   \n',q)
fprintf('El error cometido es %f  \n',error)