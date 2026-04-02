%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [x,y]=runge4sis(fun,a,b,y0,n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Aproxima la solución de un PVI para un sistema de EDOs
% usando el método de Runge-Kutta de orden 4
%      Y%=F(x,Y) x en [a,b];  Y(a)=Y0
%  Datos
%-----
%* fun = función vectorial del sistema escrita como vector columna.
%        para que siga la misma nomenclatura que los ode**
% * a = punto inicial
% * b = punto final
% * y0 = vector columna valor de la solución en x=a
%        para que siga la misma nomenclatura que los ode**
% * n = número de pasos para llegar a b
% Resultado
% ---------
% * x = vector columna con los  puntos donde se calcula la solución
% * y = matriz de valores aproximado del vector solución
%       en los puntos x.
%       Cada columna tiene ...
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=(b-a)/n;
m=length(y0);
x=zeros(n+1,1);
y=zeros(n+1,m);
y(1,:)=y0';
x(1)=a;
for i=1:n
    k1=fun(x(i),y(i,:))';
    k2=fun(x(i)+h/2,y(i,:)+h*k1/2)';
    k3=fun(x(i)+h/2,y(i,:)+h*k2/2)';
    k4=fun(x(i)+h,y(i,:)+h*k3)';
    y(i+1,:)=y(i,:)+(h/6)*(k1+2*k2+2*k3+k4);
    x(i+1)=x(i)+h;
end
