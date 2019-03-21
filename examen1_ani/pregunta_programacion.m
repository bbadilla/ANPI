clc; clear

pkg load dataframe

%Calculo de raices e iteraciones para el método de newton_steffensen
[r11,itm11] = newton_steffensen(@f1,@f1diff,2,10**-10);
[r12,itm12] = newton_steffensen(@f2,@f2diff,2,10**-10);
[r13,itm13] = newton_steffensen(@f3,@f3diff,1,10**-10);
[r14,itm14] = newton_steffensen(@f4,@f4diff,15,10**-10);
[r15,itm15] = newton_steffensen(@f5,@f5diff,2,10**-10);

%Calculo de raicese iteraciones para el método de newton
[r21, itm21] = newton(@f1, @f1diff, 2, 10**-10);
[r22, itm22] = newton(@f2, @f2diff, 2, 10**-10);
[r23, itm23] = newton(@f3, @f3diff, 1, 10**-10);
[r24, itm24] = newton(@f4, @f4diff, 15, 10**-10);
[r25, itm25] = newton(@f5, @f5diff, 2, 10**-10);

%Calculo de raices e iteraciones para el método de steffensen
[r31, itm31] = steffensen(@f1, 2, 10**-10);
[r32, itm32] = steffensen(@f2, 2, 10**-10);
[r33, itm33] = steffensen(@f3, 1, 10**-10);
[r34, itm34] = steffensen(@f4, 15, 10**-10);
[r35, itm35] = steffensen(@f5, 2, 10**-10);

C = {"f_x", "Xo", "Root_x", "NSM", "NM", "SM"; 
     "atan(x)", 2, r11, itm11, itm21,itm31; 
     "sin(x) - x/2", 2, r12, itm12, itm22,itm32; 
     "10xexp(-x**2)-1", 1, r13, itm13, itm23,itm33;
     "x**6 - 36x**5 + 450x**4 - 2400x**3 + 5400x**2 - 4320x + 720", 15, r14, itm14, itm24,itm34;
     "xlog10(x) - 1.2", 2, r15, itm15, itm25,itm35};
     
dataframe (C)