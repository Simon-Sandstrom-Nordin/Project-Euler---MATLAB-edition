clc; clear; close all;

sum = 0;
sum_of_squared_terms = 0;
for k = 1:100
    sum_of_squared_terms = sum_of_squared_terms + k^2;
    sum = sum + k;
end
sum = sum^2;
disp(sum - sum_of_squared_terms)
