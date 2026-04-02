n=input('Numero');
s=0;
for k=1:(n-1)
    s=s+ (-1)^k/(2*k+1);
end
s=4*s;
disp(s)