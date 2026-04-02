function [x,normaresiduo,niter]=jacobi(A,b,x0,tol,maxiter)
x=x0;
n=length(b);
for niter=1:maxiter
    for k=1:n
        suma=0;
        for j=1:n
            suma=suma+(A(k,j)*x0(j));
        end
        suma=suma-(A(k,k)*x0(k));
        x(k)=(b(k)-suma)/A(k,k);
    end
    error=norm(x-x0,inf);
    if error<=tol
        normaresiduo=norm(b-A*x,inf);
        return
    end
    x0=x;
end
end