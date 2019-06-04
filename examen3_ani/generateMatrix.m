% Genera la matriz deseada

function A = generateMatrix(a,b,c,d,m,n)
  initial = ones(m,n);
  % Se cambian las diagonales a los valores deseados
  for i = 1:m
    for j = 1:n
      if(i == j)
      
        initial(i,j) = b;
        if(i+1 <= m)
          initial(i+1,j) = c;
        endif
        if(j+1 <= n)
          initial(i,j+1) = a;
        endif
        
        if(i+2 <= m)
          initial(i+2,j) = d;
        endif
        
      endif
    endfor
  endfor
  
  % Valor de retorno, matriz final
  A = initial;
endfunction
