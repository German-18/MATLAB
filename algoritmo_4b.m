e0=[];
v0=[];
a=[];
t=[];
S=[];
for h=1:3
    m=input('e0');
    e0=[e0,m];
    vv=input('v0');
    v0=[v0,vv];
    Rr=input('a');
    a=[a,Rr];
    y=input('t');
    t=[t,y];
    [e]=movimiento(e0,v0,a,t);
    S=[S,e];
end
Tabla=[e0;v0;a;t;[e]];
fprintf('%5.5f     %5.5f    %5.5f    %5.5f    %5.5f \n',Tabla)