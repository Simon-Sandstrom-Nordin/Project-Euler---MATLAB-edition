clc; clear; close all;

A = [];

for a = 2:100
    for b = 2:100
        A(end+1) = a^b;
    end
end

A = unique(A);
A = sort(A);
disp(length(A))
