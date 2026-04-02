function [x,niter,normares]=relajacion3(A,b,x0,omega,toler,maxitera)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Aproxima la solución del sistema lineal Ax=b por el metodo de relajacion
%  Datos
%  -----
% * A   = matriz del sistema cuadrada de orden n
% * b   = vector de los términos independientes de dimensión n x 1 
% * x0  = vector inicial
% * omega = parámetro de relajación
% * toler = tolerancia de parada (norma de la diferencia de dos iteraciones)
% * maxitera = número máximo de iteraciones
%  Resultado
%  ---------
% * x        = solución del sistema lineal  Ax=b 
% * niter    = iteraciones realizadas para alcanzar la tolerancia
% * normares = norma infinito del residuo si se alcanza la tolerancia
%            = -9999 si no se alcanza la tolerancia en las iteraciones
%             dadas.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Comprobación del valor de omega. Ha de estar en el intervalo (0,2)
if (omega<=0) || (omega >= 2)
    disp('Valor erroneo de omega')
    exit
end

% Cálculo de la dimensión del sistema
n=size(A,1);
% Inicializo el vector x,la matriz A1 y el vector b1 
% (para asignarles un tamaño)
x=x0;
A1=A;
b1=b;
% Inicializo la norma del residuo por si no se llega a calcular
normares=-9999;
for niter=1:maxitera
    for k=1:n 
       sum=0;
       for p=1:n
           if p~=k
               sum=sum+A1(k,p)*x(p);
           end
       end
       x(k)=(1-omega)*x(k)+b1(k)-sum;
    end
    if norm(x-x0,inf)<toler
        normares=norm(b-A*x,inf);
        return
    end
    x0=x;
end
disp('No se alcanzó la tolerancia en las iteraciones dadas')
return