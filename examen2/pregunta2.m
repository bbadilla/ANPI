imageToClean = im2double(imread("imagen_a_limpiar.jpg"));
imageToCleanCol = (imageToCol(imageToClean))';

colClean = [];
colDirty = [];
bestMatch = 10;
currentMatch = 0;
bestMacthIndex = 0;

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

resImage = colToImage(res, 81, 107);

[m, n] = size(colClean);

for i = 1:n
     currentMatch = norm(getColumn(colClean, i) - res, "fro");
     
     if (currentMatch < bestMatch)
       bestMacth = currentMatch;
       bestMacthIndex = i;
     endif   
endfor  

match = getColumn(colClean, bestMacthIndex);
matchImage = colToImage(match, 81, 107);

set(gcf, 'name', 'Resultados de aplicar el filtro')
subplot(2,2,2),imshow(resImage); title('Imagen sin ruido');
subplot(2,2,1), imshow(imageToClean); title('Imagen con ruido');
subplot(2,2,3), imshow(matchImage); title('Imagen más parecida');