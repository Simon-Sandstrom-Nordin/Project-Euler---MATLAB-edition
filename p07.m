clc; clear; close all;

prime_counter = 0;
iteration = 0;
searching = true;
while searching
    iteration = iteration + 1;
    if isprime(iteration)
        prime_counter = prime_counter + 1;
        if prime_counter > 10000
            disp(iteration)
            searching = false;
        end
    end
end
