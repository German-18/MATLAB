n=input('Cantidad al que se le aplica el descuento');
m=input('Numero de productos');
for k=1:m
    v=input('Precio de cada producto');
    w(v)=v;
end
u=sum(w);
x=sum(w(1:n));
x1=x*0.8;
y=sum(w(n:(2*n)));
y1=y*0.9;
z=sum(w((2*n):(4*n)));
z1=z*0.95;
a=sum(w((4*n):length(w)));
des=z1+y1+x1+a;
descuento=u-des;
fprintf('El total a pagar es %f . \n',u)
fprintf('El descuento es %f . \n',descuento)
fprintf('Con descuento es %f . \n',des)
