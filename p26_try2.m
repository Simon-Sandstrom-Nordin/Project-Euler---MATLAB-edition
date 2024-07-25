clc; clear; close all;

max_cycle_check = 1000;
longest_cycle = 0;
corresponding_d = 0;

for d = 2:999
    disp(d)
    repeating_decimals = 0;
    for k = 1:max_cycle_check
        if mod(sym(10)^k, d) == 1
            repeating_decimals = k;
            break
        end
    end
    if repeating_decimals > longest_cycle
        longest_cycle = repeating_decimals;
        corresponding_d = d;
    end
end

disp(['The value of d < 1000 that produces the longest recurring cycle in its decimal fraction part is: ' num2str(corresponding_d)]); % 983
disp(['The length of this recurring cycle is: ' num2str(longest_cycle)]);   % 982

% this is considerably slower, ~15 min compared to the seconds it took to
% get the wrong answer. I still don't understand why this formula works.
% interesting with 1/983 you get 982 repeating decimals...
% Oh it's fermat's little theorem
% 10^(983-1) = 1 mod 983, since 983 is prime.
