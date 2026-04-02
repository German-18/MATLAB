m=input('numero entre 100 y 200');
n=input('Numero entre 300 y 500');
v=[];
w=[];
while (100<=m) && (m<=200)
    m=m+7;
    v=m;
end
while (300<=n) && (n<=500)
     n=n-3;
     w=n;
end
 if v==w
    disp(v)
    disp(w)
 end