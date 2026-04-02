%Ejercicio 1
%Función de relajación
% Aproxima la solución del sistema lineal Ax=b por el método
%de relajación
% Datos
% -----
% * A= matriz del sistema cuadrada de orden n
% * b= vector de los términos independientes de dimensión n x 1
% * x0 = vector inicial
% * omega = parámetro de relajación
% * toler = tolerancia de parada (norma de la diferencia de dos
%iteraciones)
% * maxitera = número máximo de iteraciones
% Resultado
% ---------
% * x= solución del sistema lineal Ax=b
% * niter= iteraciones realizadas para alcanzar la tolerancia
% * normares = norma infinito del residuo si se alcanza la tolerancia
%= -9999 si no se alcanza la tolerancia en las
%iteraciones dadas.

function [x,niter,normares]=relajacion (A,b,x0,omega,toler,maxitera)
n=size(A,1);
x=x0;
normares=-9999;
%El bucle se utiliza para no sobrepasar el número máximo de iteraciones
for niter=1:maxitera
    for k=1:n
        %Utilizamos otro bucle para hacer el sumatorio del método
        sum=0;
        for j=1:n
            if(j~=k)
                sum=A(k,j)*x(j)+sum;
            end
        end
        %Así se van calculando cada componente de x
        x(k)=(1-omega)*x(k)+(omega/A(k,k))*(b(k)-sum);
    end
    %El condicional es para parar el programasi se llega a la tolerancia
    error=norm(x-x0,inf);
    if (toler>=error)
        normares=norm(b-A*x,inf);
        return
    end
    %Se actualiza el vector x
    x0=x;
end
end