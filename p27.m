clc; clear; close all;

find_pamount(1,41)

prod = 0;
max_primes = 0;
for a = -999:999
    for b = -999:999
        primes = find_pamount(a, b);
        if primes > max_primes
            max_primes = primes;
            prod = a*b;
        end
    end
    a
end
disp(max_primes)
disp(prod)  % correct

function amount_prime = find_pamount(a, b)
amount_prime = 0;
searching = true;
while searching % presumably this won't generate an infinite sequence of primes
    if amount_prime^2 + a*amount_prime + b < 0
        searching = false;
        break
    end
    if isprime(amount_prime^2 + a*amount_prime + b)
        amount_prime = amount_prime + 1;
    else
        searching = false;
    end
end
amount_prime = amount_prime - 1; % To account for the zero, and return -1 if no primes are found
end
