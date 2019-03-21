function x = biseccion_iter(a, b, tol)
  if f1(a) * f1(b) <= 0
    iter = floor(log2((b - a) / tol)) + 1;    
    for i = 1 : iter
      x = (a + b) / 2;
      if f1(a) * f1(x) <= 0
        b = x;
      else
        a = x;
      endif  
    endfor    
  else
    x = 'No funka :v';
  endif
endfunction
