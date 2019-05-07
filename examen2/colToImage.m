function imageMatrix = colToImage(colImage, row, col)
  
  imageMatrix = [];

  for i = 1:row
    
    row = [];
    
    for j = 1:col
      
      row = [row colImage(3*(i-1)+j,1)];
      
    endfor
    
    imageMatrix = [imageMatrix ;row];
    
  endfor
  
  imageMatrix = imageMatrix';

endfunction