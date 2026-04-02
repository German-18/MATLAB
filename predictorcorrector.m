function [x,y]=predictorcorrector(f,a,b,y0,n)
h=(b-a)/n;
l=length(y0);
x=zeros(n+1,1);
y=zeros(n+1,l);
x(1)=a;
y(1,:)=y0';
for i=1:3
    k1=f(x(i),y(i,:))';
    k2=f(x(i)+h/2,y(i,:)+h*k1/2)';
    k3=f(x(i)+h/2,y(i,:)+h*k2/2)';
    k4=f(x(i)+h,y(i,:)+h*k3)';
    y(i+1,:)=y(i,:)+(h/6)*(k1+2*k2+2*k3+k4);
    x(i+1)=x(i)+h;
end
for i=4:n
    x(i+1)=x(i)+h;
    y1=y(3,:)+h*(55.*f(x(4),y(4))-59.*f(x(3),y(3))+37.*f(x(2),y(2))-9.*f(x(1),y(1)))./24;
    y(i,:)=y1+h*(9.*f(x(i),y(i,:))+19.*f(x(3),y(3,:))-5.*f(x(2),y(2,:)+f(x(1),y(1,:))))./24;
for j=1:3
    x(j)=x(j+1);
    y(j,:)=y(j+1,:);
end
x(3)=x(i);
y(3,:)=y(i,:);
end
end









