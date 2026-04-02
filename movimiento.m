function e=movimiento(e0,v0,t,a)
e = e0 + (v0.*t) + (0.5.*a.*(t.^2));
end