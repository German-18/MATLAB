function [x,iter,normaresiduo]=relajacion2(A,b,x0,omega,tol,maxiter)
n=size(A,1);
x=x0;
for iter=1:maxiter
    for i=1:n
        suma=0;
        for j=1:n
            suma=suma+A(i,j)*x(j);
        end
        suma=suma-A(i,i)*x(i);
        x(i)=(1-omega)*x(i)+(omega/A(i,i))*(b(i)-suma);
    end
    error=norm(x-x0,inf);
    if (tol>=error)
        normaresiduo=norm(b-A*x,inf);
        return
    end
    x0=x;
end
end
