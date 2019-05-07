function colImage = imageToCol(matrixImage)

  [m,n] = size(matrixImage);
  
  colImageC = [];
  
  for i = 1:n
    for j = 1:m
      colImageC = [colImageC matrixImage(j,i)];
    endfor
  endfor
  
  colImage = colImageC;
      
endfunction