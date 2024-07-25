clc; clear; close all;

total = 0;

for number = 3:1000000
    num_cell = split(num2str(number), '');
    num_cell = num_cell(2:end-1);
    sum = 0;
    for num = 1:length(num_cell)
        sum = sum + factorial(str2double(num_cell{num}));
    end
    if number == sum
        total = total + sum;
    end
    disp(number)
end

disp(total)
