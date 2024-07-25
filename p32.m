clc; clear; close all;

prod_list = [];

% Case 1: 1-digit multiplicand * 4-digit multiplier = 4-digit product
for multiplicand = 2:9
    for multiplier = 1000:9999
        product = multiplicand * multiplier;
        if p32is9Pandigital(multiplicand, multiplier, product) && ~any(ismember(product, prod_list))
            prod_list(end+1) = product;
        end
    end
end

% Case 2: 2-digit multiplicand * 3-digit multiplier = 4-digit product
for multiplicand = 10:99
    for multiplier = 100:999
        product = multiplicand * multiplier;
        if p32is9Pandigital(multiplicand, multiplier, product) && ~any(ismember(product, prod_list))
            prod_list(end+1) = product;
        end
    end
end

sum(prod_list)  
% 449061
% correct: 443839
% somehow got MORE

% fml

% Disincluded the zero, now the answer is 45228 which is correct
