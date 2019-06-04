function Aout = metodo2_qr(A,k)
  % Ao es igual a la matriz A
  Ao = A;
  [m,n] = size(Ao);
  
  % Se comienza la iteracion QR para obtener los autovalores
  for k = 1:k
    % Se obtiene la factorizacion QR de la matriz Ak-1
    [Qnow, Rnow] = metodo1_qr(Ao);
    % Ak es igual a Rk-1 por Qk-1
    Ao = Rnow*Qnow;
  endfor
  
  % Aout es la diagonal de la matriz Ak, la cual corresponde a todos los
  % autovalores
  Aout = diag(Ao);
endfunction
