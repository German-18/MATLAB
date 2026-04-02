clear
clc
%a)
A=[2,1,0,0,0;1,4,1,0,0;0,-1,4,-1,0;0,0,-2,4,2;0,0,0,1,2];
P=diag(A)';Q=diag(A,1)';R=diag(A,-1)';
b=[3;6;2;4;3];
c=tridiagonal(P,Q,R,b);


% u′′−xu′+u=(10+3x)e−3x+xsen(x), x∈(0,1), u(0)=2, 3u(1)+u′(1)=3cos(1)−sen(1).
% u(x)=cos(x)+e−3x.
funb=@(x)(-x);
func=@(x)(1);
funf=@(x)((10+3*x)*exp(-3*x)-x*sin(x));
gamma1=3;
gamma2=1;
beta=3*cos(1)-sin(1);
eta1=1;
eta2=0;
alfa=2;
pinter=100;
syms x u 
u=cos(x)+exp(-3*x);
a=diff(u,x,2)-x*diff(u,x)+u-(10+3*x)*exp(-3*x)-x*sin(x);
b=simplify(a)

[x,u]=contorno(funb,func,funf,eta1,eta2,alfa,gamma1,gamma2,beta,pinter);
plot(x,u)
hold on 
ezplot('cos(x)+exp(-3*x)',[0,1])
legend('contorno','exacta','Location','Best')