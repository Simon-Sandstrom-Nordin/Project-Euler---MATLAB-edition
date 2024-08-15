clc; clear; close all;

max = 10^15;
for n = 1:max
    factor_list_1 = factor(n);
    u_f_1 = unique(factor_list_1);
    
    factor_list_2 = factor(n+1);
    u_f_2 = unique(factor_list_2);

    factor_list_3 = factor(n+2);
    u_f_3 = unique(factor_list_3);

    factor_list_4 = factor(n+3);
    u_f_4 = unique(factor_list_4);

    if length(u_f_1) == 4 && length(u_f_2) == 4 && length(u_f_3) == 4 && length(u_f_4) == 4
        disp(n)
    end
end
