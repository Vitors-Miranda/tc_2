
% Señal 1:
%Definir um vetor de -10 hasta 10 valendo 0 (9.9 segundos)
%Su energia es 2.16 J.

%Definindo los parametros
A = 5;
a = 10;
t = 0.2;

%A) Calculando la frecuencia máxima, mínima y de mostreo
fmax = 6 / t;
fmin = 2 * fmax;
fs = 8 * fmin;
disp("Frecuencia de mostreo: " + fs);

%B) representando la señal
ts= 1/fs;
t=-10:ts:10;
x = A * exp(-a * abs(t));

figure;
subplot(3,2,1);
plot(t,x);
title("Señal 1");
xlabel("Teiempo (s)");
ylabel("Amplitud (v)");

 
% Señal 2:
%Su energia es 18.4 J.


%C) Para la energia, es necessario converter la integral en un sumatorio
%del modulo del senal ao quadrado normalizada pela frecuencia de mostreo
%Para la potencia normalizamos el sumatorio por N (numero de muestras)