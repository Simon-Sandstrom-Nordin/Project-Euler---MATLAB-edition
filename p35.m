clc; clear; close all;

counter = 0;
for number = 2:10^6 -1

    n_list = [number];
    
    for k = 1:length(num2str(number))-1
        
        number = n_list(end);
        num_cell = split(num2str(number), '');
        num_cell = num_cell(2:end-1);
        num_cell = flip(num_cell);
        temp_cell = num_cell{1};
        rest_cell = flip(num_cell(2:end));
        for cell = 1:length(rest_cell)
            temp_cell(end+1) = rest_cell{cell};
        end
        n_list(end+1) = str2double(temp_cell);
    
    end
    
    if all(isprime(n_list))
        disp(n_list(1))
        counter = counter + 1;
    end

end
disp(counter) % 55, correct
% SKYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYSCRAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEER
