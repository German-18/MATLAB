%metheun.m
function[x,y]=mHeun(f,a,b,y0,n)
%f=funcion diferencial
%a=punto inicial 
%b=punto final
%q=es el valor de la funcion en X=a
%n= el numero de pasos para llegar a "b"
h=((b-a)/n);
l=length(y0);
x=zeros(n+1,1);
x(1)=a;
y=zeros(n+1,l);
y(1,:)=y0;
for i=1:n
    y(i+1,:)=y(i,:)+(h/2)*(f(x(i),y(i,:))+f(x(i)+h,y(i,:)+h*f(x(i),y(i,:))));
    x(i+1)=x(i)+h;
end