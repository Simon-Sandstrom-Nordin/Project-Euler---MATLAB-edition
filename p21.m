clc; clear; close all;

% amicable numbers, amicable pair
a = 5;
b = 7;

d(5)
d(7)
d(220)
d(284)

total_sum = 0;
for a = 1:10000-1
    for b = a:10000-1
        if a == b
            continue
        end
        
        if d(a) == b && d(b) == a
            total_sum = total_sum + a + b;
        end

    end

    a
end

total_sum   % 31626, correct

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
