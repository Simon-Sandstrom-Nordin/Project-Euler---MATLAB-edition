clc; clear; close all;

% perfect, abundant, deficient numbers

d(12)

list_of_abundant_numbers = [];

for num = 1:28123
    if d(num) > num
        list_of_abundant_numbers(end+1) = num;
    end
end

total_sum = 0;
for num = 1:28123
    for n1_index = 1:length(list_of_abundant_numbers)
        for n2_index = n1_index:length(list_of_abundant_numbers)
            if num == list_of_abundant_numbers(n1_index) + list_of_abundant_numbers(n2_index)
                total_sum = total_sum + num;
            end
        end
    end
    num
end
total_sum

function sum = d(n)
sum = 0;
for k = n:-1:1
    
    % to avoid d(1) = 1 return
    if k == n
        continue
    end
    
    if mod(n,k) == 0
        sum = sum + k;
    end

end

end

% shit program that counts copies, total_sum = 2.2760e+11
