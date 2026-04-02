function [x,y,U,iter,salida]=GaussSeidelEDP(funseg,funa,funb,func,fund,A,B,C,D,tol,maxit,Nx,Ny)

hx=(B-A)/(Nx+1);
hy=(D-C)/(Ny+1);
x = A:hx:B;
y = C:hy:D;

alfa=hy/hx;
alfacuad=alfa*alfa;
beta=2*(1+alfacuad);
hy2=hy*hy;
%Hay que escribir las funciones de contorno en cada uno de los lados
%segun si varian o se mantienen constantes los valores de x e y, en este
%caso estan asi:
U = zeros(Nx+2,Ny+2);
U(1,2:Ny+1)   =funa(x(1),y(2:Ny+1));%funa=izq (La x vale 0 y la y varía)
U(2:Nx+1,1)   =funb(x(2:Nx+1),y(1));%funb=abajo (La y vale 0 y la x varía)
U(Nx+2,2:Ny+1)=func(x(Nx+2),y(2:Ny+1));%func=der (La x vale pi y la y varía)
U(2:Nx+1,Ny+2)=fund(x(2:Nx+1),y(Ny+2));%fund=arriba (La y vale pi y la x varía)

U(1,1)= 0.5*(funb(x(1),y(1))+funa(x(1),y(1)));
U(1,Ny+2)= 0.5*(fund(x(1),y(Ny+2))+funa(x(1),y(Ny+2)));
U(Nx+2,1)= 0.5*(funb(x(Nx+2),y(1))+func(x(Nx+2),y(1)));
U(Nx+2,Ny+2)= 0.5*(func(x(Nx+2),y(Ny+2))+fund(x(Nx+2),y(Ny+2)));

error = tol+1;
iter=0;
Uold=U;

while  (iter < maxit)  && (error>tol)
    iter = iter+1;
    for ii=2:Nx+1
        for jj=2:Ny+1
            U(ii,jj) = (alfacuad*(U(ii+1,jj)+U(ii-1,jj))+...
                U(ii,jj+1)+U(ii,jj-1)-hy2*funseg(x(ii),y(jj)))/beta;
        end
    end
    error = max(max(abs(U-Uold)));
    Uold=U;
end

if (error>tol)
    salida=1;
else
    salida=2;
end