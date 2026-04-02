l=input('Longitud del vector');
v=(1:l);
if mod(l,2)==0
    for k=1:2:(l-1)
        v(k)=[];
    end
else
    for k=2:2:(l-1)
        v(k)=[];
    end
end
disp(v)