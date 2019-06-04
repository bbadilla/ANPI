% Pregunta dos examene anpi

% Se genera una matriz de 250x250 y con
% a = 2, b = 10, c=d=1
matrix = generateMatrix(2,10,1,1,250,250);

% Se le aplica la iteracion QR a la matriz generada con 20 iteraciones
A = metodo2_qr(matrix, 20);

% Se muestra la matriz A, la cual es la matriz que contiene
% todos los autovalores
display(A);