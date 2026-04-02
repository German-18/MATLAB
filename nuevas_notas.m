c1=input('Nota c1');
c2=input('Nota c2');
if c1 < 2 && c2 <2
    disp('Suspenso')
elseif c1 > 9 && c2 > 9
   disp('Aprobado')
end
c3=input('Nota c3');
v=[c1,c2,c3];
w=mean(v);
if w < 3 
    disp('Suspenso')
elseif w >= 7 
    disp('Aprobado')
elseif w >= 3 || w < 7
    examen=input('Nota examen');
    if examen < 5
    disp('Suspenso')
    else
    disp('Aprobado')
    end
end