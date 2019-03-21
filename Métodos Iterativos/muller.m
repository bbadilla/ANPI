function zero = muller(x0, x1, x2, iteraciones)
  
  for n = 1:iteraciones
    disp("Iteracion:"), disp(n);
    a = (((x1 - x2)*(functionSlide24(x0)-functionSlide24(x2)))-((x0 - x2)*(functionSlide24(x1)-functionSlide24(x2))))/((x0 - x1)*(x0 - x2)*(x1 - x2))
    b = ((power((x0 - x2), 2)*(functionSlide24(x1)-functionSlide24(x2)))-(power((x1 - x2), 2)*(functionSlide24(x0)-functionSlide24(x2))))/((x0 - x1)*(x0 - x2)*(x1 - x2))
    c = functionSlide24(x2)
    
    r = x2 - ((2*c)/(b + sign(b)*sqrt((power(b,2)) - (4*a*c))))
  
    zero = r;
    x2 = r;
  endfor
    
endfunction