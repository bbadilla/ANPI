%Metodo utilizado es el Metodo1.pdf- Ecuacion (6) con parametros  a=b=c=1 y  d= 0
function [root, iterations, e] = metodo(f, x0, a, b, c, d, tol)
  x = x0;
  xx = x0;
  z = x + f(x);
  y = x - (((f(x))**2)/(f(z)-f(x))); 
  
  e = tol + 1;
  iterations = 0;
  
  rootz = [];
  fks = [];
  
  while abs(f(x)) >= tol 
    
    if (f(z)-f(x) != 0 & (((a*f(y)-b*f(z))/(y-z))+((c*f(y)-d*f(x))/(y-x))) != 0)
      
      fk = abs(f(x));
      
      x_new = y - ((f(y))/(((a*f(y)-b*f(z))/(y-z))+((c*f(y)-d*f(x))/(y-x))));
      e = fk;
      x = x_new;
      
      z_new = x + f(x);
      z = z_new;
      
      y_new = x - (((f(x))**2)/(f(z)-f(x))); 
      y = y_new;
      
      root = x_new;
      
      iterations++;
      
      rootz = [rootz, root];
      fks = [fks, fk];
      
      disp("-------------------------------------------------------------------------------------------")
      disp("Iteración: "),disp(iterations);
      disp("Raiz: "),disp(root);
      disp("Error: "),disp(e);
      disp("-------------------------------------------------------------------------------------------")
      disp("    ");
      
    else
      disp("Algun denominador se hizo cero");
      disp("Estos son los resultados que llevaba hasta el momento");
      disp("iteraciones: "), disp(iterations);
      disp("raiz: "), disp(root);
      break;
    endif     
  endwhile
  disp("-------------------------------------------------------------------------------------------")
  disp("              RESULTADO                   ")
  disp("Utilizando el Metodo1.pdf - Ecuacion (6) ");
  disp("La función a la cual se le aplico el metodo es: "),disp(f);
  disp("Utilizando un x0 con un valor de: "), disp(xx);
  disp("La raiz calculada de la anterior funcion es: "),disp(root);
  disp("Cantidad de iteraciones: "),disp(iterations);
  disp("El error relativo obtenido: "),disp(e);
  disp("Con una tolerancia de: "),disp(tol);
  disp("La función evaluada en la raiz da como resultado: "),disp(f(root));
  
  iter = [1:iterations];
  subplot(2,2,1);
  plot(iter,rootz);
  title("Xk vs iteraciones");
  
  subplot(2,1,2);
  plot(iter,fks);
  title("F(Xk) vs iteraciones");
endfunction

