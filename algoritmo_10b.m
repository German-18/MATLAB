nota= input('Introduce las notas');
if nota <0 || nota>10
    disp('No valido')
elseif nota >= 0 || nota <=10
    for k=1:7
    nota= input('Introduce las notas');
    v(nota)=nota;
    notafinal=mean(v);
    end
end
fprintf('La nota es %f . \n',notafinal)
