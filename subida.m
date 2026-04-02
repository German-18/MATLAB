function res=subida(precio) 
o=precio(2:2:length(precio));
p=precio(1:2:length(precio));
q=o-p;
res=max(q);
end