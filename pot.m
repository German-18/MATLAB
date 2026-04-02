b=input('base');
e=input('exponente');
producto=1;
if e>=0 && floor(e)==e
    if e==0
        disp('1')
    elseif e>0
        for k=1:e
            producto=producto*b;
        end
    end
end
disp(producto)
