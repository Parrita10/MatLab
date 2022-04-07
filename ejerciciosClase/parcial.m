clear all
clc
syms x

funcion = input("Ingrese la función : ");
centro = input("Ingrese el centro : ");
grado = input("Ingrese el grado : ");
evaluacion = input("Ingrese un punto para evaluar la función : ");
derivada = funcion;
valorReal = subs(funcion,evaluacion);
aproximacionAnterior =0;

aiteracion=[];
aterminoR={};
aaproximacionA=[];
aerrorR =[];
aerrorA = [];

for i = 0:grado+1
    
    derivada = diff(derivada);
    termino = subs(derivada,centro);
    terminoR = (termino*x^i)/factorial(i);
    
    aproximacionA = subs(terminoR,evaluacion);
    errorR = errorRelativo(valorReal,aproximacionA);
    errorA = errorAproximado(aproximacionA,aproximacionAnterior);
    aproximacionAnterior = aproximacionA;

    aiteracion(i+1,1)=i+1;
    aterminoR(i+1,1)= sym2cell(terminoR);
    aaproximacionA(i+1,1) = aproximacionA;
    aerrorR(i+1,1)=errorR;
    aerrorA(i+1,1) = errorA;
   
    
end
%T  =table(p)
T = table(aiteracion,aterminoR,aaproximacionA,aerrorR,aerrorA)



