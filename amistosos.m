function amigos=amistosos(m,n)
for k=1:(m-1)
    if mod(m,k)==0
        v(k)=k;
        x=sum(v);
    end
end
for p=1:(n-1)
    if mod(n,p)==0
       w(p)=p;
       y=sum(w); 
    end
end
if x == n && y == m
    amigos = 1;
else
    amigos = 0;
end
end