function [a,m,d]=conviertedias(totaldias)
div=totaldias/365;
a=floor(div);
r=mod(totaldias,365);
division=r/30;
m=floor(division);
d=mod(r,30);
end