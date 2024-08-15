clc; clear; close all;

n = 100000;
triangulars = zeros(n,1);
pentagonals = zeros(n,1);
hexagonals = zeros(n,1);

for k = 1:n
    triangulars(k) = k*(k+1)/2;
    pentagonals(k) = k*(3*k-1)/2;
    hexagonals(k) = k*(2*k-1);
end

powers_combined = [triangulars; pentagonals; hexagonals];
powers_combined = sort(powers_combined);
powers_combined = powers_combined(4:end); % remove leading ones
powers_combined = unique(powers_combined); % remove duplicates

max = max(powers_combined);
list = [];
numbers_found = 0;
searching = true;
for number = powers_combined'
    if ismember(number, triangulars) && ismember(number, pentagonals) && ismember(number, hexagonals)
        disp(number)
        list(end+1) = number;
        numbers_found = numbers_found + 1;
        if numbers_found == 2
            break
        end
    end
    disp(number)
    disp(list)
    if number >= max
        disp("max number reached")
        break
    end
end
