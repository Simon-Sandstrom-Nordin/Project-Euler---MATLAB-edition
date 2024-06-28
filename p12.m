clc; clear; close all;

searching_for_nat_number = true;
nat_number = 1;
iteration_counter = 2;
while searching_for_nat_number
    divisor_counter = 0;
    searching_for_divisors = true;
    potential_divisor = 1;
    while searching_for_divisors
        if mod(nat_number, potential_divisor) == 0
            divisor_counter = divisor_counter + 1;
        end
        if potential_divisor == nat_number
            searching_for_divisors = false;
        end
        potential_divisor = potential_divisor + 1;
    end

    if divisor_counter > 500
        searching_for_nat_number = false;
        disp(nat_number)
    end

    nat_number = 0;
    for k = 1:iteration_counter
        nat_number = nat_number + k;
    end
    iteration_counter = iteration_counter + 1;
end

% Highly composite triangle numbers...
