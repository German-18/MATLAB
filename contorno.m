%% M…TODO DE DIFERENCIAS FINITAS (ODE, LINEAL) CONDICIONES MIXTAS
%--------------------------------------------------------------
function [x,u]=contorno(funb,func,funf,eta1,eta2,alfa,gamma1,gamma2,beta,pinter) 
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
% * pinter      = n˙mero de puntos interiores del mallado
%-----------
%  Resultado
%  ---------
% * x = discretizaciÛn de [0,1] (incluidos los extremos)
% * u = vector soluciÛn en los nodos de x
%-------------------------------------------------------------------
%  Usa el mÈtodo de diferencias finitas centradas para la ecuaciÛn  
% y aproximaciones de primer orden para las  condiciones de contorno
%-------------------------------------------------------------------
p=zeros(1,pinter);
q=zeros(1,pinter);
r=zeros(1,pinter);
seg=zeros(1,pinter);

h=1/(pinter+1);
hcuad=h*h;
hmed=h/2;

xint=h:h:1-h;
x=[0 xint 1];

for k=1:pinter
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
