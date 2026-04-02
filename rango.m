n=input('Cuantos');
w=[];
for k=1:n
    v=input('Dame datos');
    w=[w,v];
    a=max(w);
    b=min(w);
    z=a-b;
end
fprintf('El rango es %f \n',z)