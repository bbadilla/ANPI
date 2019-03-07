function derivada = derive_pol(p)
  len = size(p)(2);
  x = p(end:-1:1);
  
   for i = 1:len
     x(i) = x(i)*(i - 1);
   endfor
   
  derivada = x(end:-1:2);
endfunction