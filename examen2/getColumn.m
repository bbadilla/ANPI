function col = getColumn(matrix, column)
  
  [m,n] = size(matrix);
  
  col = [];
  
  for i = 1:m
  
    col = [col ;matrix(i,column)];
  
  endfor

endfunction