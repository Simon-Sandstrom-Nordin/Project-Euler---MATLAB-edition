clc; clear; close all;

a = 1;
b = 2;
sum = b;

while b < 4*10^6
    b_temp = b;
    b = a + b;
    a = b_temp;
    if mod(b,2) == 0
        sum = sum + b;
    end
end

disp(sum)
