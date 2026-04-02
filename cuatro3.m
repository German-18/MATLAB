n=input('numero');
suma = 0;
for k =1:(n-1)
    if mod(n,k)==0
        suma=suma+k;
    end
end
if suma > n
    disp('abundante')
else
    disp('no')
end
