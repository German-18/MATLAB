digitos=input('Introduzca el numero de digitos');
v=[];
for k = 1:digitos
    cifras=input('Introduce las cifras');
    v=[v,cifras];
end
w=length(v);
l=w/2;
p=v(1:(l+1));
q=v(l:w);
m=sort(q);
n=sort(p);
if n==m
        fprintf('El numero es palindromo  %f . \n',v)
    elseif n~=m
        fprintf('El numero no es palindromo  %f . \n',v)
end