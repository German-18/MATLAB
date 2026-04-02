grados=0:30;
for a=1:30
    u=(a*pi)/180;
    x(u)=u;
    radianes=[0,x];
end
for b=1:30
    v=sind(b);
    y(v)=v;
    seno=[0,y];
end
for c=1:30
    w=cosd(c);
    z(w)=w;
    coseno=[1,z];
end
tabla=[grados;radianes,seno,coseno];
disp(' Grados .  Radianes . Seno .  Coseno')
fprintf(' %f .  %f .  %f . %f .  \n',tabla)