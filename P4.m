clear
clc
%4.1  (1−x)y′ =3x+y−2
syms x y
y= (x*(4-(3*x)))/(2*(x-1));
a=((1-x)*diff(y,x))-3*x-y+2;
r=simplify(a)

dsolve('(1-x)*Dy=(3*x)+y-2','y(0)=0','x')

%4.3  y′+7y=7(cos(7x)+sen(7x))+50e3x, y(0)=5, x∈[0,3]
%a)
syms x y
y=sin(7*x)+5*exp(3*x);
b=(7*(cos(7*x)+sin(7*x))+50*exp(3*x))-7*y-diff(y,x);
s=simplify(b)
%b)
f=@(x,y)(7*(cos(7*x)+sin(7*x))+50*exp(3*x))-7*y;

[h,p,q]=euler_cauchy(0,3,5,f,8);
[ii,c,d]=euler_cauchy(0,3,5,f,16);
[jj,x,z]=euler_cauchy(0,3,5,f,32);
plot(p,q)
hold on
plot(c,d)
plot(x,z)
ezplot(y,[0,3])
legend('8','16','32','exacta','Location','Best')