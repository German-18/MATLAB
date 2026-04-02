function [x,y]=metEuler(f,a,b,y0,n)
h=(b-a)/n;
m=length(y0);
x=zeros(n+1,1);
y=zeros(n+1,m);
y(1,:)=y0';
x(1)=a;
for i=2:n+1
    y(i,:)=y(i-1,:)+h*f(x(i-1),y(i-1,:));
    x(i)=x(i-1)+h;
end
