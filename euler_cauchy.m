function [h,x,y]=euler_cauchy(pini,pfin,vini,f,pasos) 

%% Aproxima la solución de un PVI para una EDO usando el método de Euler-Cauchy 
% Datos
% * pini = punto inicial del intervalo
% * pfin = punto final del intervalo
% * vini = valor de la solución en el punto inicial 
% * f = función de la EDO
% * pasos = número de pasos para llegar al punto final %
% Resultado
% ---------
% * x = vector de puntos del intervalo donde se calcula la solución
% * y = vector de valores aproximados de la solución en los puntos del vector anterior
% * h = tamaño del paso utilizado
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
h=(pfin-pini)/pasos;
x=zeros(1,pasos+1);
y=zeros(1,pasos+1);
x(1)=pini;
y(1,:)=vini;
for i=1:pasos
    y(i+1)=y(i)+f(x(i)+(h/2),y(i)+(h/2)*f(x(i),y(i)));
    x(i+1)=x(i)+h;
end
end