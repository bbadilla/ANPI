function [X] = relajacion(A,B,XO,TOL,N,W)
[m,n] = size(A);
X=XO;
k = 1;
while k <= N
    for i = 1:m
        sum1 = 0;
        sum2 = 0;
        for j = 1:i-1
            sum1 = sum1 + A(i,j)* X(j);
        end
        for j = i+1:n
            sum2 = sum2 + A(i,j)* XO(j);
        end
        X(i) = (1-W)*XO(i) + (W/A(i,i))*(B(i) - sum1 - sum2);
    end
    C = abs(X- XO);
    max = 0;
    for i = 1:n
        if abs(C(i)) > max
            max = abs(C(i));
        end
    end
    if(max < TOL)
        X
        A*X
        B
        return
    end
    k = k + 1;
    XO = X;
end
