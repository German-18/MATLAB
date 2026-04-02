n=[];
for k=1:8
    a=input('Nota');
    while a<0 || a >10 
        a=input('Otra');
    end
    n=a;
end
for k=1:8
    suma= suma + n(k);
    media=suma/8;
end
disp(media)
