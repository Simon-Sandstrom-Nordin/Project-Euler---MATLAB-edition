clc; clear; close all;

prod_list = [];


for multiplicand = 2:99999
    for multiplier = 2:99999
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

% 45228 is facit nvm still wrong

% kanske är en till klassisk ismember på en array... [0,0,0,1,...] kollar
% första elementet