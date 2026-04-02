function [x,iter,normaresiduo]=Jacobi_optimizado(A,b,x0,maxiter,tol)
n=length(b);
x=x0;
for i=1:n
    d=1/A(i,i);
    b(i)=d*b(i);
    for j=1:n
        A(i,j)=d*A(i,j);
    end
end
for iter=1:maxiter
    for i=1:n
        suma=0;
        for j=1:n
            suma=suma+A(i,j)*x0(j);
        end
        suma=suma-A(i,i)*x0(i);
        x(i)=(b(i)-suma);
    end
    error=norm(x-x0,inf);
    if error<=tol
        normaresiduo=norm(b-A*x,inf);
        return
    end
    x0=x;
end
end