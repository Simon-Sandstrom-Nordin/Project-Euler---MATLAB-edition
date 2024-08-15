clc; clear; close all;

% for index = values
%     statements
% end
% for styrvariabel = styrmängd
%     satsgrupp
% end

n = 10000000;
triangulars = zeros(n,1);
pentagonals = zeros(n,1);
hexagonals = zeros(n,1);

for k = 1:n
    triangulars(k) = k*(k+1)/2;
    pentagonals(k) = k*(3*k-1)/2;
    hexagonals(k) = k*(2*k-1);
end

list = [];
numbers_found = 0;
number = min([hexagonals; pentagonals; triangulars]) + 1;
max = min([max(hexagonals), max(pentagonals), max(triangulars)]);
searching = true;
while searching
    if ismember(number, triangulars) && ismember(number, pentagonals) && ismember(number, hexagonals)
        disp(number)
        list(end+1) = number;
        numbers_found = numbers_found + 1;
        if numbers_found == 2
            break
        end
    end
    number = number + 1;
    disp(number)
    disp(list)
    if number >= max
        disp("max number reached")
        break
    end
end
