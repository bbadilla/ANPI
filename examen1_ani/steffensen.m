%Método de Steffensen, pregunta programada exámen de Anális numérico
%para Ingeniería I semestre 2019

function [root, iterations] = steffensen(f, x0, tol)
  x = x0;
  e = tol + 1;
  iterations = 0;
  solHastaMomento = [];
  
  while abs(f(x)) >= tol   

    if (f(x + f(x)) - f(x)) != 0
      
        diff = (((f(x) ^ 2)) / (f(x + f(x)) - f(x)));
        x_new = x - diff;
        
        root = x_new;
        
        if x_new == x
          iterations = "Failure"; 
          break;
        endif
        
        e = abs((x_new - x) / x_new);    
        x = x_new;
        
        iterations++;
        solHastaMomento = [solHastaMomento, root];    
    else 
        iterations = "Failure";   
        disp("------------------------------------------------------------------------------------------------------------------------------------ ");
        disp("El denomidanor en el metodo de steffensen se hizo cero en la funcion: "), disp(f);
        disp("Las raices obtenidas hasta el momento se presentan ordenadas segun su numero de iteracion");
        disp(solHastaMomento);
        disp("------------------------------------------------------------------------------------------------------------------------------------ ");
        disp("  ");
        break;
        
    endif
  endwhile
endfunction