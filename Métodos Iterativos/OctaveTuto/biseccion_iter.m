function x = biseccion_iter(a, b, iter)
  if f1(a) * f1(b) <= 0
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
