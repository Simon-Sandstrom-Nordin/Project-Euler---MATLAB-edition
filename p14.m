clc; clear; close all;

% Collatz sequence. Collatz problem is not proved but it's conjectured that
% every sequence defined for the set of positive integers as
% n -> n/2 if mod(n,2) == 0
% n -> 3*n + 1 if mod(n,2) == 1
% ends with a one (well, *ends* as in it cycles as (1,4,2) presumably

start_best = [];
record = 0;
for start = 1:10^6-1
    list = [start];
    while start ~= 1
        if mod(start, 2) == 0
            start = start / 2;
        else
            start = 3*start + 1;
        end
        list(end+1) = start;
    end
    disp(num2str(list(1)) + "   :   " + sum(list))
    if length(list) > record
        record = length(list);
        start_best = list(1);
    end
end

disp(start_best)    % 837799
disp(record)        % 525
