n=input('Numeros');
w=[];
for i = 1:length(n)
    if mod(n(i),3)==0
        w(n(i))=n(i);
        v=sum(w);
    end
end
disp(w)
disp(v)
