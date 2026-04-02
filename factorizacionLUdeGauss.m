n=input('Orden del sistema ');
A=input('Matriz ');
for k=1:(n-1)
    for i=(k+1):n
        L(i,k)=A(i,k)/A(k,k);
        for j=(k+1):n
            A(i,j)=A(i,j)-(L(j,k) * A(k,j));
        end
    end
end
disp(A(i,j))
disp(L(i,j))
