%% Despliega graficos y la solucion de la ecuación f(x) = (sin(x) ^ 2) - (x ^ 2) + 1, utilizando metodos
%% que utilizan las ecuaciones 13 y 15 del problema 1.

clc; clear
format long;

[r11,itm11,e1] = ecuacion1(@f2, @f2diff, 1.5, 10**-10);
[r12,itm12,e2] = ecuacion2(@f2, @f2diff, 1.5, 10**-10);

display("------------------------------------------------------------------------------------------------------");

dispLine1 = "Utilizando el método 1, un cero de la funcion f(x) = (sin(x) ^ 2) - (x ^ 2) + 1 está dado por: ";
dispLine2 = "\nEl método 1 necesitó ";
dispLine3 = " iteraciones, con un valor inicial de x_0 = 1.5 y una tolerancia de 10^-10\nDicha aproximación cumple que |f(";
dispLine4 = ")| = ";

dispLine12 = "Utilizando el método 2, un cero de la funcion f(x) = (sin(x) ^ 2) - (x ^ 2) + 1 está dado por: ";
dispLine22 = "\nEl método 2 necesitó ";

display(cstrcat(dispLine1, num2str(r11), dispLine2, num2str(itm11), dispLine3, num2str(r11), dispLine4, num2str(e1)));

display("");

display(cstrcat(dispLine12, num2str(r12), dispLine22, num2str(itm12), dispLine3, num2str(r12), dispLine4, num2str(e2)));

display("------------------------------------------------------------------------------------------------------");