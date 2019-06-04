function [Q, R] = metodo1_qr(A)
  [m,n] = size(A);
  R = zeros(n,n);
  V = A;
  Q=zeros(m,n);

  for i =1:n
      R(i,i)= norm(V(:,i));
      Q(:,i)= V(:,i)/R(i,i);
   
      for j=i+1:n
        R(i,j)= (Q(:,i)')*V(:,j);
        V(:,j)=V(:,j) - R(i,j)*Q(:,i);
      endfor
  endfor  
endfunction