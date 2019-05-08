function imageMatrix = colToImage(colImage, row, col)
  
  imageMatrix = [];

  for i = 1:col
    
    row2 = [];
    
    for j = 1:row
      
      row2 = [row2 colImage(row*(i-1)+j,1)];
      
    endfor
        
    imageMatrix = [imageMatrix , row2'];
    
  endfor
  
  imageMatrix = imageMatrix;

endfunction