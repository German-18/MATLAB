n=input('Dame un numero');
for  k=3:4:n
    v(k)=(-1)/k;
    for l=1:4:n
    x(l)=1/l;
    end
    p=sum(v);
    q=sum(x);
    z=p+q;
    numer=4*z;
end
fprintf('El numero pi es %f \n',numer)