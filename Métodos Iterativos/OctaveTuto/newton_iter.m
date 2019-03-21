function [x, err] = newton_iter(x0, iter)
  x = x0;
  e = [];
  for i = 1 : iter    
    x_new = x - (f1(x) / f1_diff(x));
    err = abs((x_new - x) / x_new);
    e = [e err];
    x = x_new;
  endfor
  %%plot(1:iter, e);
endfunction
