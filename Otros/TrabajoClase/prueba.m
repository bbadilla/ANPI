function y = prueba(x)
    for i = 1 : 10
        if (i != 3)
            y = (x * i) + x;
        else
            disp("Entró");
            break;
        endif
    endfor
end