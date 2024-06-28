clc; clear; close all;

palindrome = 0;

for first_number = 100:999
    for second_number = 100:999
        prod = first_number*second_number;
        prod_string = num2str(prod);
        prod_string_reversed = reverse(prod_string);
        if prod_string == prod_string_reversed
            if prod > palindrome
                palindrome = prod;
            end
        end
    end
end

disp(palindrome)

% learnt: reverse() works on strings
% Interestingly, when input a string array it's
% an element-wise reversion, so reverse(["ab", "cf"]
% returns ["ba", "fc"]
