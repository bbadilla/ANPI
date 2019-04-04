function [root, iterations, error1] = ecuacion1(f, fdiff, x0, tol)
  
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
      x_new = x - (((7/4) - ((3/4) * (fdiff(y_) / fdiff(x)))) * (f(x) / fdiff(x))); 
       
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

  figure(1);
  subplot(2, 2, 1);
  plot(iter, rootz); 
  title('Ecuacion 13. Xk contra iteraciones');
  xlabel('Iteraciones(k)', 'FontSize', 10);
  ylabel('Xk', 'FontSize', 10);

  subplot(2, 1, 2);
  plot(iter, fks);
  title('Ecuacion 13. F(Xk) contra iteraciones');
  xlabel('Iteraciones(k)', 'FontSize', 10);
  ylabel('|F(Xk)|', 'FontSize', 10);
endfunction