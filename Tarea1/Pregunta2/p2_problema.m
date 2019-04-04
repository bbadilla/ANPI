%Metodo utilizado es el Metodo1.pdf- Ecuacion (6) con parametros  a=b=c=1 y  d= 0
%x0 = 5
% funcion es w0*x + B*sin(x)=0;     Donde w0=1 y B=5
[root, iterations, e] = metodo(@funcion, 5, 1, 1, 1, 0, 10**-10);