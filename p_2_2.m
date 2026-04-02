N=input('Numero de puntos maximo');
for n=2:N
    v=1:n;
    v=v';
    V=vandermonde(v);
    condicion(n)=cond(V);
end
plot(2:N,condicion(2:N),'*')