n=0;
fraccion=[];
while (1/(2^n)) > 0.000001
    n=n+1;
    potencia(n)=n;
    fraccion(n)=(1/2^n);
    suma(n)=(1/2^n)+(1/2^(n+1));
end
Tabla=[ potencia ; fraccion;suma  ];
disp(' potencia   fraccion  suma  ')
fprintf(' %f  %f  %f   \n',Tabla)