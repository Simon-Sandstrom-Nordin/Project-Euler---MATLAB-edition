clc; clear; close all; format long e;

% realmax gives 1.797693134862316e+308
% 2^1000 is of order e+301 which is small enough for storage

number = sym(2)^1000;   % allows precise storage

% num_str = num2str(number); <- gives scientific notation
num_str = char(vpa(number, 310));   % vpa w. 310 digits of precision
% vpa means Variable Precision Arithmetic
% num = sym(2)^20
 
% num = 1048576
% vpa(num,2) % second argument give the number of digits of precision 
% ans = 1.0e+6

sum = 0;
for k = 1:length(num_str)
    % 
    if isstrprop(num_str(k), 'digit')   % to get rid of the "."
        sum = sum + str2double(num_str(k)); % double is more efficient that num
    end
end
sum
