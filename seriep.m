n=input('Numero');
s=1;
for k=1:(n-1)
    s=s + ((-1)^k)/(2*k+1);
end
suma=4*s;
disp(suma)