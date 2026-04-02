V=input('Naturales');
for k=1:5
    W=[];
    M=[];
    if mod(V(k),9)==0
        W=V(k);
    end
    if mod(V(k),5)==0 && mod(V(k),3)==0
        X=V(k);
        M=mean(X);
    end
end
disp(W)
disp(M)