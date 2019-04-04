clc; clear

[r11,itm11] = ecuacion1(@f1, @f1diff, 2.1, 10**-10);
[r12,itm12] = ecuacion2(@f1, @f1diff, 2.1, 10**-10);