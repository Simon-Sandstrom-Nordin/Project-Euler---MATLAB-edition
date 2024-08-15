clc; clear; close all;

% generate composite numbers (& primes)
primes = [];
composites = [];
max = 10000;
for c = 1:max
    if isprime(c)
        primes(end+1) = c;
    end
    factor_list = factor(c);
    % [co,ed] = histcounts(factor_list);
    % more_than_one = false;
    % for co_ind = 1:length(co)
    %     if co(co_ind) > 1
    %         more_than_one = true;
    %     end
    % end
    if length(factor_list) > 1 && mod(c,2) == 1 % odd composites only
        composites(end+1) = c;
    end
end

% disp(primes)
% disp(composites)

for c = composites
    found = false;
    for additive = primes
        for square = 1:max
            if c == additive + 2*square^2
                found = true;
            end
        end
    end
    if ~found
        disp(c)
    end
end
