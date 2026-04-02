%Metodo de Euler-cauchy
function[x,y]=mEuCasis(f,a,b,y0,n)
% f=función diferencial
% a= inicio del intervalo
% b=final del intervalo
% q=condicion inicial X()=A
% n=numero de pasos
h=((b-a)/n);
z=length(y0);
x=zeros(n+1,1);
x(1)=a;
y=zeros(n+1,z);
y(1,:)=y0;
for i=1:n
    k1=f(x(i),y(i,:))';
    k2=h*f(x(i)+(h/2),y(i,:)+((h/2)*k1))';
    y(i+1,:)=y(i,:)+k2;
    x(i+1)=x(i)+h;
end
end
