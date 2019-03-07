function x=biseccion_tol(a,b,tol)
  if f1(a)*f1(b)<= 0
    iter=floor(log2((b-a)/tol))+1;
    for i=1:iter
      x=(a+b)/2;
      if f1(a)*f1(x)<=0
        b=x;
      else
        a=x;
      endif
    endfor
  else
    x='El intervalo dado no cumple las condiciones necesarias'
  endif
endfunction
