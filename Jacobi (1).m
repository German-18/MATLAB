function [x0,niter]=Jacobi(A,b,x0,maxiter)
x=x0;
n=length(b);
for niter=1:maxiter
    for i=1:n
        suma=0;
        for j=1:n
            suma=suma+A(i,j)*x0(j);
        end
        suma=suma-A(i,i)*x0(i);
        u(i)=(b(i)-suma)/A(i,i);
    end
    for i=1:n
        x0(i)=u(i);
    end
end
