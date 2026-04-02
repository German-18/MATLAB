clear
clc
%5.2 y′′−(1−y2)y′+y=0, y(0)=2, y′(0)=0, x∈[0,20].

a=dsolve('D2y-(1-y^2)*Dy+y=0','y(0)=2','Dy(0)=0');

fun=@(x,u)([u(2);(1-u(1).^2).*u(2)-u(1)]);
[x,Y]=runge4sis(fun,0,20,[2;0],25);
[p,Q]=ode45(fun,[0,20],[2;0]);
figure(1)
plot(x,Y(:,1))
hold on
plot(x,Y(:,2))
plot(p,Q(:,1))
plot(p,Q(:,2))
legend('rungefuncion','rungederivada','ode45fun','ode45deriv','Location','Best')

% . y′=x2+y, y(0)=1, x∈[0,10], y(x) = 3ex − 2x − x2 − 2
g=@(x,y)(x^2+y);
[h,a,B]=euler_cauchy(0,10,1,g,20);
[c,D]=mHeunsis(g,0,10,1,20);
[e,F]=metEuler(g,0,10,1,20);
[j,K]=runge4sis(g,0,10,1,20);
figure(2)
hold on 
plot(a,B)
plot(c,D)
plot(e,F)
plot(j,K)
ezplot('3*exp(x) - 2*x - x^2 - 2',[0,10])
legend('eulercauchy','heun','euler','runge','exacta','Location','Best')
