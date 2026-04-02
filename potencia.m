% M�TODO DE LA POTENCIA 
% M. Mar�n. UCO
%--------------------------------------------------------------
% [z,lambda,niter,error]=potencia(A,z,toler,maxiter)
% 
%  Datos
%  --------------------
% * A      = matriz cuadrada 
% * z      = vector inicial
% * toler  = tolerancia 
% * maxiter= n�mero m�ximo de iteraciones
% * Si solo se da la matriz A, toma
%          z = vector de unos
%          toler = 10^-14
%          maxiter = 1000
% 
%  Resultado
%  ------------------
% * lambda = autovalore de m�dulo m�ximo 
% * z      = autovector asociado de norma 1 (norma eucl�dea)
% * niter  = n�mero de iteraciones realizadas
% * error  = norma de la diferencia entre A*z y lambda*z
%---------------------------------------------------------------

function [z,lambda,niter,error]=potencia(A,z,toler,maxiter)

% Si solo se da la matriz A 
if nargin==1
    z=ones(size(A,1),1);
    toler=10^-14;
    maxiter=1000;
end
% Normalizaci�n
z=z/norm(z);
w=zeros(size(A,1),1);
niter=0;
while norm(z-w)>toler && niter <= maxiter
    niter=niter+1;
    w=z;
    z=A*w;
    z=z/norm(z,inf);
end
if niter == maxiter
    fprintf('no se alcanza la tolerancia %f en %i iteraciones \n',toler,maxiter)
    return
end
% C�lculo del autovalor
lambda=(z'*A*z)/(z'*z);
error=norm(A*z-lambda*z);