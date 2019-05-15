% A= Matriz del sistema de ecuaciones
% b= Vector de los valores a los que se igualan las ecuaciones
% w= Valor preferiblemente en el intervalo: [0,2] 
% x= Valores iniciales de las variables
% itermax= N�mero m�ximo de iteraciones
% tol= Tolerancia
% Ejemplo: Resolver el sistema mostrado:
%                                        3 x1   -x2    x3 = 1
%                                        3 x1  6 x2  2 x3 = 0
%                                        3 x1  3 x2  7 x3 = 4
%[x iteraciones]=relajacion([3 -1 1;3 6 2;3 3 7],[1;0;4],1.1,[0;0;0],11,0.0001)

function [x iteraciones]=relajacion(A,b,w,x,itermax,tol)
n=size(A,1);  e=1; iteraciones=0;
if nargin<3 ; endif
while e>=tol
  iteraciones=iteraciones+1;
  e=0;  
  if iteraciones>=itermax
    x="Numero maximo de iteraciones excedido";
    break    
  else
    for i=1:n
      j=[1:i-1 i+1:n];
      su=b(i)-A(i,j)*x(j);
      xi=(1-w)*x(i)+w*su/A(i,i);
      e=max(abs(x(i)-xi),e);
      x(i)=xi;
    endfor
   endif
  e=e/max(abs(x));
endwhile
endfunction
