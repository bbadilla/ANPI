%M�todo de Newton-Steffensen, pregunta programada ex�men de An�lis num�rico
%para Ingenier�a I semestre 2019

function [root, iterations] = newton_steffensen(f, fdiff, x0, tol)
  
  x = x0;
  e = tol + 1;
  iterations = 0;
  root = 0;
  
  while abs(f(x)) >= tol
    x_ = x - (f(x) / fdiff(x));
    
    if (fdiff(x)) * (f(x) - f(x_)) != 0
      x_new = x - ((f(x) ** 2) / ((fdiff(x)) * (f(x) - f(x_))));
      
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
