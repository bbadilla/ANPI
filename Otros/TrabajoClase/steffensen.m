function [x, err] = steffensen(x0, iter)
  x = x0;
  e = [];
  for i = 1 : iter    
    % x_new = x - (f1(x) / f1_diff(x));

    if (f1(x + f1(x)) - f1(x)) != 0
        x_new = x - (((f1(x) ^ 2)) / (f1(x + f1(x)) - f1(x)));
        
        err = abs((x_new - x) / x_new);    
        x = x_new;
    else 
        break;
    endif
  endfor
endfunction