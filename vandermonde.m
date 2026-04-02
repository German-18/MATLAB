function [V]=vandermonde(v)
n=length(v);
for j=1:n
    V(:,j)=v.^(j-1);
end
end
