clc; clear; close all;

number = 1;
while true
    if mod(number, 1) == 0 && mod(number, 2) == 0 && mod(number, 3) == 0 && ...
            mod(number, 4) == 0 && mod(number, 5) == 0 && mod(number, 6) == 0 && ...
            mod(number, 7) == 0 && mod(number, 8) == 0 && mod(number, 9) == 0 && ...
            mod(number, 10) == 0 && mod(number, 11) == 0 && mod(number, 12) == 0 && ...
            mod(number, 13) == 0 && mod(number, 14) == 0 && mod(number, 15) == 0 && ...
            mod(number, 16) == 0 && mod(number, 17) == 0 && mod(number, 18) == 0 && ...
            mod(number, 19) == 0 && mod(number, 20) == 0
        disp(number)
        break
    end
    number = number + 1;
end

% note: 232792560 <<< 20! = 2432902008176640000
