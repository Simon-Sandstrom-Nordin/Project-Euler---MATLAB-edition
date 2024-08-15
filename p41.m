clc; clear; close;

max = 0;
for n = 1:9
    for potential_prime = 10^(n-1):10^n

        if isprime(potential_prime)
            num_str = num2str(potential_prime);
            if ~contains(num_str, "0") && strlength(num_str) == n
                if p41isNPandigitalPrime(num_str, n) && potential_prime > max
                    max = potential_prime;
                end
            end
        end

        disp(num2str(potential_prime) + " " + num2str(n) + " " + num2str(max))
    end
end
disp(max)
