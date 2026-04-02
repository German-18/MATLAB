function [L,U]=factlu(A)
[A,l]=factlugauss(A);
n=size(A,1);
C=[l,zeros(n,1)];
L=diag(ones(n,1))+C;
U=triu(A);
end