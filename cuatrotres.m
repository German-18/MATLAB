N=input('Numero');
p=0;
for k=0:N
    p=p+(2*((1/2)^k));
    if (p-4)<10^(-2)
        disp(p)
        disp(N)
    end
end