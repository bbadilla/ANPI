function [a b c d] = trazador_cubico(xi,yi)
  n = length(xi);

  h = zeros(1,n-1);
  for i=1:n-1
    h(i) = xi(i+1) - xi(i);
  endfor

  A = zeros(n-2);
  b = zeros(1,n-2);
  S = zeros(1,n);

  A(1,1) = 2*(h(1)+h(2));
  A(1,2) = h(2);
  b(1) = 6*((yi(3)-yi(2))/h(2) - (yi(2)-yi(1))/h(1));
  
  for i = 2: n-3
        A(i,i-1) = h(i);
        A(i,i) = 2*(h(i)+h(i+1));
        A(i,i+1) = h(i+1);
        b(i) = 6*((yi(i+2)-yi(i+1))/h(i+1) - (yi(i+1)-yi(i))/h(i));
  endfor
  
  A(n-2,n-3) = h(n-2);
  A(n-2,n-2) = 2*(h(n-2)+h(n-1));
  b(n-2) = 6*((yi(n)-yi(n-1))/h(n-1) - (yi(n-1)-yi(n-2))/h(n-2));
  
  val_ini = zeros(1,length(b));
  [xr] = relajacion(A,b',val_ini',0.0000001,200,1);
  
  for i=2: n-1 
    S(i) = xr(i-1);
  endfor
  
  s(1) = 0;
  s(n) = 0;
  
  a = zeros(1,n-1);
  b = zeros(1,n-1);
  c = zeros(1,n-1);
  d = zeros(1,n-1);
  
  for j = 1:n-1
    a(j) = (S(j+1)-S(j))/(6*h(j));
    b(j) = S(j)/2;
    c(j) = (yi(j+1)-yi(j))/h(j) - (2*h(j)*S(j)+h(j)*S(j+1))/6;
    d(j) = yi(j);
  endfor
   
  
endfunction
