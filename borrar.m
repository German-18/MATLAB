A = [4,-2,-6,0;-5,-4,10,8;0,9,4,-2;1,0,-7,5];
b = [2,21,-12,-6];
x0 = zeros(1,length(b));
w = 0.5;
maxiter = 100;
tol = 0.01;
[x,iter,normaresiduo] = relajacion2(A,b,x0,w,tol,maxiter)