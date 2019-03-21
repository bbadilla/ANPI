%Método de Newton, pregunta programada exámen de Anális numérico
%para Ingeniería I semestre 2019

function [root, iterations] = newton(f, fdiff, x0, tol)
  x = x0;
  e = tol + 1;
  iterations = 0;
  
  while abs(f(x)) >= tol   
    
    if fdiff(x) != 0 
      
      diff = (f(x) / fdiff(x));
      x_new = x - diff;
      
      e = abs((x_new - x) / x_new);
      
      x = x_new;
      root = x_new;
      
      iterations++;
    else
      iterations = "Failure";
      break;
    endif  
  endwhile
endfunction