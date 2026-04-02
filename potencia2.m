function [z,lambda,iter,error]=potencia2(A,z,tol,maxiter)
z=z/norm(z);
w=zeros(size(A,1),1);
iter=0;
while norm(z-w)>tol && iter <= maxiter
    iter=iter+1;
    w=z;
    z=A*w;
    z=z/norm(z,inf);
end
lambda=(z'*A*z)/(z'*z);
error=norm(A*z-lambda*z);
end