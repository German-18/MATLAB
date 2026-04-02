n=[];
suma=0;
for k=1:8
    a=input('Nota');
    while a<0 || a >10 
        a=input('Otra');
    end
    n=a;
    suma= suma + n;
    media=suma/8;
end
disp(media)
