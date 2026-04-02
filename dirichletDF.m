%% MÉTODO DE DIFERENCIAS FINITAS (ODE, LINEAL) CONDICIONES MIXTAS
%--------------------------------------------------------------
function [x,u]=dirichletDF(funf,funb,func,eta1,eta2,alfa,gamma1,gamma2,beta,ninter) 
% Resuelve el problema de contorno
%    u''+b(x)u'+c(x)u=f(x)  x en (0,1), 
%   eta1 u(0)+ eta2 u'(0)=alfa, gamma1 u(1)+ gamma2 u'(1)=beta
%--------------------------------------------------------------
%  Datos
%  -----
% * funf,funb,func = funciones que definen al segundo miembro f(x) 
%                       y a los coeficientes b(x),c(x) 
% * eta1, eta2, gamma1, gamm2 = coeficientes de las condiciones de contorno
% * alfa, beta  = condiciones de contorno 
% * ninter      = número de puntos interiores del mallado
%-----------
%  Resultado
%  ---------
% * x = discretización de [0,1] (incluidos los extremos)
% * u = vector solución en los nodos de x
%-------------------------------------------------------------------
%  Usa el método de diferencias finitas centradas para la ecuación  
% y aproximaciones de primer orden para las  condiciones de contorno
%-------------------------------------------------------------------


%El programa realiza el traspaso de una ecuación diferencial a una matriz
%tridiagonal.
u=zeros(1,ninter+2);
p=zeros(1,ninter);
q=zeros(1,ninter);
r=zeros(1,ninter);
seg=zeros(1,ninter);

h=1/(ninter+1);
hcuad=h*h;
hmed=h/2;

xint=h:h:1-h;
x=[0 xint 1];

for k=1:ninter
    p(k)=2-func(xint(k))*hcuad;
    r(k)=-1+funb(xint(k))*hmed;
    q(k)=-1-funb(xint(k))*hmed;
    seg(k)=-hcuad*funf(xint(k));
end
p=[h*eta1-eta2 p h*gamma1+gamma2];
r=[r -gamma2];
q=[eta2 q];
vseg=[alfa*h seg beta*h];

u=tridiagonal(p,q,r,vseg);