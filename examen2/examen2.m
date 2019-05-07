imageToClean = im2double(imread("imagen_a_limpiar.jpg"));
imageToCleanCol = (imageToCol(imageToClean))';

colClean = [];
colDirty = [];

for i = 1:55

  imageClean = im2double(imread(strcat("caras_limpias/cara_limpia_", num2str(i), ".jpg")));
  imageDirty = im2double(imread(strcat("caras_ruido/cara_ruido_", num2str(i), ".jpg")));

  imageColClean = imageToCol(imageClean);
  imageColDirty = imageToCol(imageDirty);
  
  colClean = [colClean ;imageColClean];
  colDirty = [colDirty ;imageColDirty];

endfor

colClean = colClean';
colDirty = colDirty';

F = colClean * pinv(colDirty);

res = F*imageToCleanCol;

resImage = colToImage(imageToCleanCol, 107, 81);

imshow(resImage);