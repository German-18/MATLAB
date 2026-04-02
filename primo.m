n=input('numero');
if n>0 && floor(n)==n
    v=[];
    for k=2:(n-1)
        v(k)=k;
    end
    if mod(n,v(k))~=0
        w=v(k);
        disp('Primo')
    else
        disp('No primo')
    end
end