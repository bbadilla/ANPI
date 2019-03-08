x = 1:0.0001:10;
n = length(x);
y = zeros(n, 1);

for i = 1 : n
    y(i) = f1(x(i));
endfor

plot(x, y);