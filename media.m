n=input('Numeros');
w=[];
for k=1:n
v=input('Introducelos');
w=[w,v];
end
x=1./w;
H=mediarmonica(x,n);
fprintf( 'los numeros son %f \n',w)
fprintf('la media es %f \n', H)
