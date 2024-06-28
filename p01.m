clc; clear; close all;

sum = 0;
for k = 1:1000-1
    if mod(k, 3) == 0 || mod(k, 5) == 0
        sum = sum + k;
    end
end

disp(sum)
