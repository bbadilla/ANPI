clc; clear
format long;

[r11,itm11,e1] = ecuacion1(@f3, @f3diff, 2.1, 10**-10);
[r12,itm12,e2] = ecuacion2(@f3, @f3diff, 2.1, 10**-10);

display("----------------------------------------------------------------------------------------------------");

dispLine1 = "Utilizando el m�todo 1, un cero de la funcion f(x) = exp(-x) + sin(x) - 1 est� dado por: ";
dispLine2 = "\nEl m�todo 1 necesit� ";
dispLine3 = " iteraciones, con un valor inicial de x_0 = 2.1 y una tolerancia de 10^-10\nDicha aproximaci�n cumple que |f(";
dispLine4 = ")| = ";

dispLine12 = "Utilizando el m�todo 2, un cero de la funcion f(x) = exp(-x) + sin(x) - 1 est� dado por: ";
dispLine22 = "\nEl m�todo 2 necesit� ";

display(cstrcat(dispLine1, num2str(r11), dispLine2, num2str(itm11), dispLine3, num2str(r11), dispLine4, num2str(e1)));

display("");

display(cstrcat(dispLine12, num2str(r12), dispLine22, num2str(itm12), dispLine3, num2str(r12), dispLine4, num2str(e2)));

display("----------------------------------------------------------------------------------------------------");