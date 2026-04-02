n=input('Numero');
Nsuma=0;
if n>0 && floor(n)==n
    for k=1:(n-1)
        if mod(n,k)==0
            Nsuma=Nsuma+k;
        end
    end
    if Nsuma==n
        disp('Perfecto')
    else
        disp('No perfecto')
    end
end

