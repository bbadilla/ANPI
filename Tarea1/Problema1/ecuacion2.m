function [root, iterations, error1] = ecuacion2(f, fdiff, x0, tol)
  
  x = x0;
  iterations = 0;
  root = 0;
  error1 = 0; 
  rootz = [];
  fks = [];

  while abs(f(x)) >= tol
    y_ = x - ((2/3) * (f(x) / fdiff(x)));
    
    if fdiff(x) != 0
      fk = abs(f(x));
      x_new = x - (((4 * f(y_)) / ((7 * f(y_)) - (3 * f(x)))) * (f(x) / fdiff(x))); 
       
      x = x_new;
      root = x_new;
      error1 = fk;

      rootz = [rootz root];
      fks = [fks fk];

      iterations++;
    else
      iterations = "Failure";      
      break;  
    endif
  endwhile

  iter = [1:iterations];

  subplot(2, 2, 1);
  plot(iter, rootz); 
  title('Xk contra iteraciones')

  subplot(2, 1, 2);
  plot(iter, fks);
  title('F(Xk) contra iteraciones')
endfunction