function col = getColumn(matrix, column)
  
  [m,n] = size(matrix);
  
  col = matrix(1:m,column);

endfunction