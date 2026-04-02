m=input('numero entre 100 y 200');
n=input('Numero entre 300 y 500');
v=[];
w=[];
if ((100<=m) && (m<=200)) && ((300<=n) && (n<=500))
    while m~=n
        m=m+7;
        v=m;
        n=n-3;
        w=n;
        if m==n
            disp(v)
            disp(w)
        end
    end
end