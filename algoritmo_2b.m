u=[];
v=[];
r=[];
for k=1:3
    p=input('Dame u');
    u=[u,p];
    q=input('Dame v');
    v=[v,q];
    o=input('Dame r');
    r=[r,o];
    fr=stokes(v,r,u);
end
disp('  u .  v .  R .  Fr')
tabla=[u;v;r;fr];
fprintf('   %f .  %f .  %f .  %f .  \n',tabla)