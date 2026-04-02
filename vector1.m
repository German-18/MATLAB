function [c]=vector1(a,b)
if length(a) > length(b)
    for i = 1:length(a)
        for k = 1:length(b)
            if a(i)==b(k)
                c(b(k))=b(k);
            end
        end
    end
elseif length(a) < length(b)
    for i = 1:length(b)
        for k = 1:length(a)
            if a(k)==b(i)
                c(b(i))=b(i);
            end
        end
    end
elseif length(a)== length(b)
     for i = 1:length(a)
        for k = 1:length(b)
            if a(i)==b(k)
                c(b(k))=b(k);
            end
        end
     end
end