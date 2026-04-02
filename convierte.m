function [g,m,s]=convierte(rad)
v=(rad*180)/pi;
g=floor(v);
w=v/g;
x=w-1;
y=60*x;
z=floor(y);
o=y/z;
p=o-1;
s=60*p;
end