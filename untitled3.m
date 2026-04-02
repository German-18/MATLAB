a=[2 7 5 4 3 8];
b =[7 1 3 9 0];
for i = 1:length(a)
    for k = 1:length(b)
        if a(i)==b(k)
            c(b(k))=b(k);
        end
    end
end
disp(c)