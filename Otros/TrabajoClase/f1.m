function y = f1(x)

    r = 10; alpha = 4; sigma = 4; lambda = 1; x1 = 7; x2 = 6;

    sigmar = (sigma ^ 2) / ((10 * alpha) ^ 2);
    s = pi * (r ^ 2);
    g = ((2 * s) / pi) * acos(x / (2 * r)) - x * sqrt((r ^ 2) - ((x ^ 2) / 4));
    k = (10 * alpha) / log(10);
    sigmac = ((g ^ 2) / (2 * lambda * (k ^ 2))) * ((1 / g) + (1 / s));  
    

    y = ((log10(x1 / x)) / ((sigmar) * (log(10)))) + ((x * (x2 - x)) / (sigmac));
endfunction

