n=input('Introduce el numero');
for k=1:n
    v(k)=k;
    fac=prod(v);
end
fprintf('El factorial es %f   \n',fac)