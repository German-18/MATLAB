function fact=factor(n)
if n==0
    fact=1
elseif n==1
    fact=1
else
v=1:n;
fact=prod(v)
end