clc; clear; close all;

number = 600851475143;

% prime_factor = 0;
% for it = 1:number
%     if isprime(it) && mod(number, it)
%         prime_factor = it;
%     end
%     if mod(it, 100000) == 0
%         disp(it)
%     end
% end
% 
% disp(prime_factor)

list = [];
for it = 1:sqrt(number)
    if isprime(it) && mod(number, it) == 0
        list(end+1) = it;
    end
end

% for fun
disp(prod(list))    % learnt of a prod() function!

% for task
disp(list(end))
