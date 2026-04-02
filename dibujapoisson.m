function dibujapoisson(x,y,u,fig)

% Dibuja la función u(x,y) (Superficie)
figure(fig)
[X,Y] = meshgrid(x,y);
surf(X,Y,u')
xlabel('x')
ylabel('y')
zlabel('u(x,y)')
title('Superficie');
% Dibuja la función u(x,y) (Isovalores)
figure(fig+1)
contour(x,y,u',100)
xlabel('x')
ylabel('y')
title('Isovalores');
colorbar