function eT=errorperiodo(T,tm)
eT=(T.^2.*((0.01./(tm.^2))+(1/225))).^(1/2);
end
