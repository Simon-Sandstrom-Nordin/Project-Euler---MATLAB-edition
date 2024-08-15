clc; clear; close all; format long;

sum = vpa(0);
modulus = 10^10;
for k = 1:10
    sum = mod(sum + mod(k^k, modulus), modulus);
end
sum

% clc; clear; close all;

modulus = 10^10;
sum = 0;

for k = 1:1000
    term = 1;
    for j = 1:k
        term = mod(term * k, modulus);
    end
    sum = mod(sum + term, modulus);
end

sum

% ex. 5^5
term = 1;
answer = mod(5^5, 100)
term = mod(term*5, 100);
term = mod(term*5, 100);
term = mod(term*5, 100);
term = mod(term*5, 100);
term = mod(term*5, 100)
% modulo one term of the multiplication at a time...
