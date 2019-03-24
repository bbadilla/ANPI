%Método de Newton, pregunta programada exámen de Anális numérico
%para Ingeniería I semestre 2019

function [root, iterations] = newton(f, fdiff, x0, tol)
  x = x0;
  e = tol + 1;
  iterations = 0;
  solHastaMomento = [];
  
  while abs(f(x)) >= tol   
    
    if fdiff(x) != 0 
      
      diff = (f(x) / fdiff(x));
      x_new = x - diff;
      
      e = abs((x_new - x) / x_new);
      
      x = x_new;
      root = x_new;
      
      iterations++;
      solHastaMomento = [solHastaMomento, root];
    else
      iterations = "Failure";
      disp("------------------------------------------------------------------------------------------------------------------------------------ ");
      disp("El denomidanor en el metodo de newton  se hizo cero en la funcion: "), disp(f);
      disp("Las raices obtenidas hasta el momento se presentan ordenadas segun su numero de iteracion");
      disp(solHastaMomento);
      disp("------------------------------------------------------------------------------------------------------------------------------------ ");
      disp("  ");
      break;
    endif  
  endwhile
endfunction