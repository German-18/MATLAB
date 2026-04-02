function Y =pascal(m)
    if m==1
        Y=[1,1];
    else
        Y=pascal(m-1);
        A=zeros(1,m-1);
        for i=1:m-1
            A(i)=Y(i)+Y(i+1);
        end
        Y=[1,A,1];
    end
end