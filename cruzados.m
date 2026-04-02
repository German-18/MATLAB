m=input('Dame un primer numero entre 100 y 200');
n=input('Dame un segundo numero entre 300 y 500');

if (m>100 && m<200) && (n>300 && n<500)
    m=m+7;
    v(m)=m;
    n=n-3;
    w(n)=n;
    if m==n
        fprintf('Se cruzan en %f \n',m)
    end
fprintf('  %f  \n', v)
fprintf('  %f  \n', w)
end

