function [x,normresiduo,niter]=jacobi2(A,b,x0,tol,maxiter)
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %% Aproxima la solución del sistema lineal Ax=b por el
    % metodo de Jacobi
    % Datos
    % -----
    % * A = matriz del sistema cuadrada de orden n
    % * b = vector de los términos independientes (n x 1)
    % * x0 = vector inicial
    % * tol = tolerancia de parada (norma infinito de la diferencia
    % de dos iteraciones)
    % * maxiter = número máximo de iteraciones
    % Resultado
    % ---------
    % * x = solución del sistema lineal Ax=b
    % * normresiduo = norma infinito del residuo
    % * niter = iteraciones realizadas para alcanzar la tolerancia
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
   normresiduo=-1.999; %se pone un absurdo por si no llega a converger
   x=x0;
   n=size(b);
   for niter=1:1:maxiter
      for k=1:n
         suma=0;
         for jj=1:n
             if(jj==k)
                 continue
             else
                suma=suma+A(k,jj).*x0(jj);
             end
         end
         x(k)=(b(k)-suma)/A(k,k);
      end
      if norm((x-x0),inf)<tol
          normresiduo=norm((b-A*x),inf);
          return
      else
          x0=x;
      end
   end
end