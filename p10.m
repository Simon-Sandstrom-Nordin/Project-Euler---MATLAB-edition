clc; clear; close all; format long e;

list = [];

for n = 2:2*10^6
    if isprime(n)
        list(end+1) = n;
    end
end

disp(sum(list))
