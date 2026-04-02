n=input('dame un numero de sumandos');
for k=2:n
     if ((1/(k-1)) - (1/k)) > 0.0001
         v(k)=1/factorial(k);
         w=sum(v);
         eu=2+w;
    end
end
fprintf('El valor es %f .  \n',eu)