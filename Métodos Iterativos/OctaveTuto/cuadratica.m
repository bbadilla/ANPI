function x = cuadratica(a, b, c)
  discriminante = b ^ 2 - 4 * a * c;
  
  if discriminante > 0
    x1 = (- b + sqrt(discriminante)) / (2 * a);
    x2 = (- b - sqrt(discriminante)) / (2 * a);    
    x = [x1, x2];    
  elseif discriminante == 0
    x = (-b) / (2 * a);    
  else
    x = 'Soluciones complejas';  
  endif  
endfunction
