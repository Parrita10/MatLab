function [ea] = errorAproximado(aproximacionActual,aproximacionAnterior)
ea = ((aproximacionActual - aproximacionAnterior)/aproximacionActual)*100;
end