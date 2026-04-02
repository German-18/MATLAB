q=input('Carga');
x=input('Valores de P. inicial');
y=input('Valores de P. final');
epsilon=input('Epsilon');
l=input('Valores de incremento');
for m=1:x
    w=input('P. inicial');
    r0(w)=w;
end
for n=1:y
    z=input('P. final');
    rf(z)=z;
end
r=rf-r0;
f=fuerza(q,epsilon,r);
F(f)=f;
disp(' incremento   fuerza')
tabla=[r;F];
fprintf('  %f    %f \n',tabla)