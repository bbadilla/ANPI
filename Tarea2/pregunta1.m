x_dados = [-5 -4.5 -4 -3.5 -3 -2.5 -2 -1.5 -1 -0.5 0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
y_dados = [0 0.0707 0 -0.0909 0 0.1273 0 -0.2122 0 0.6366 1 0.6366 0 -0.2122 0 0.1273 0 -0.0909 0 0.0707 0];

[a,b,c,d] = trazador_cubico(x_dados, y_dados);

for i = 1:(length(x_dados) - 1)
  
  x_a_graficar = x_dados(i):0.01:x_dados(i + 1);
  y_a_graficar = [];  
  
  for j = 1:length(x_a_graficar)    
    y_nueva = (a(i) * ((x_a_graficar(j) - x_dados(i)) ** 3)) + (b(i) * ((x_a_graficar(j) - x_dados(i)) ** 2)) + (c(i) * ((x_a_graficar(j) - x_dados(i)))) + d(i);
    y_a_graficar = [y_a_graficar y_nueva];
  endfor  
  
  plot(x_a_graficar, y_a_graficar, 'k'), grid
  hold on
endfor

