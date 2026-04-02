a=[1,2,4,4,5,3,5,9];
b =[1,2,3,4,7,8,9];
if length(a) > length(b)
    v = length(a) - length(b);
    w = [b,zeros(1,v)];
    x = a ./ w;
    for i = 1:length(x)
        if x(i) == 1
            c(w(i))=w(i);
        end
    end
elseif length(b) > length(a)
    o = length(b) - length(a);
    p = [a,zeros(1,o)];
    r = a ./ p;
    for i = 1:length(r)
        if r(i) == 1
            c(p(i))=p(i);
        end
    end
elseif length(b) == length(a)
    l = a ./ b;
    for i = 1:length(l)
        if l(i) == 1
            c(l(i))=l(i);
        end
    end
end
disp(c)