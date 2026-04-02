m=input('Numero');
n=input('Numero');
i=2;
while mod(m,i)~=0 && mod(n,i)~=0
    m= m/i;
    n= n/i;
    i= i+1;
end
