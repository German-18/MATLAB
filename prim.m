n=input('Numero');
contador=2;
if n>0 && floor(n)==n
    for k=2:(n-1)
        if mod(n,k)==0
            contador=contador+1;
        end
    end
    if contador==2
        disp('Primo')
    else
        disp('No primo')
    end
end