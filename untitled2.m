n=0;
potencia=[];
fraccion=[];
suma=[];
while (1/(2^n)) > 0.000001
    n=n+1;
    potencia=[potencia,n];
    v=(1/2^n);
    fraccion=[fraccion,v];
    w=(1/2^n)+(1/2^(n+1));
    suma=[suma,w];
end
Tabla=[ potencia ; fraccion;suma  ];
disp(' potencia   fraccion  suma  ')
fprintf(' %f  %f  %f .  \n',Tabla)