clc; clear; close all;

prod_list = [];


for multiplicand = 2:9999
    for multiplier = 2:9999
        product = multiplicand * multiplier;
        if p32is9Pandigital(multiplicand, multiplier, product) && ~any(ismember(product, prod_list))
            prod_list(end+1) = product;
        end
    end
end

sum(prod_list) % 45228 correct
