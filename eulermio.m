%% MÉTODO DE EULER
%% Aproxima la solución de un PVI para un sistema de EDOs
% usando el método de Euler
% Y?=F(x,Y) x en [a,b]; Y(a)=Y0
% Datos
% -----
% * f = función vectorial del sistema escrita como vector columna.
% para que siga la misma nomenclatura que los ode** de MATLAB.
% * a = punto inicial
% * b = punto final
% * y0 = vector fila valor de la solución en x=a
% * n = numero de pasos para llegar a b
% Resultado
% ---------
% * x = vector columna con los puntos donde se calcula la solución
% * y = matriz de valores aproximado del vector solución
% en los puntos x. Cada columna tiene.... (COMPLETAR)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [x,y]=eulermio(f,a,b,y0,n)
h=(b-a)/n;
m=length(y0);
x=zeros(n+1,1);
y=zeros(n+1,m);
y(1,:)=y0;
x(1)=a;
for i=1:n
    y(i+1,:)=y(i,:)+h*f(x(i),y(i,:));
    x(i+1)=x(i)+h;
end