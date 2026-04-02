F=0:2:10;
C=pasocelsius(F);
K=pasokelvin(C);
disp('Fahrenheit Celsius Kelvin')
tabla=[F;C;K];
fprintf(' %f   %f   %f   \n',tabla)