clc; clear; close;

pent_gen = @(n) n*(3*n - 1) / 2;

length = 10000;
pent_nums = zeros(1, length);
for n = 1:length
    pent_nums(n) = pent_gen(n);
end

% generate matrices
% create boolean matrices
sum_nums = zeros(length);
diff_nums = zeros(length);
sum_boolean_nums = zeros(length);
diff_boolean_nums = zeros(length);
both_booleans = zeros(length);
for row = 1:length
    for col = 1:length
        sum_nums(row, col) = pent_nums(row) + pent_nums(col);
        diff_nums(row, col) = pent_nums(row) - pent_nums(col);
        if ismember(sum_nums(row, col), pent_nums)
            sum_boolean_nums(row, col) = 1;
        end
        if ismember(diff_nums(row, col), pent_nums)
            diff_boolean_nums(row, col) = 1;
        end
        if (sum_boolean_nums(row,col) == 1) && (diff_boolean_nums(row,col) == 1)
            both_booleans(row, col) = 1;
        end
    end
    
end

find(both_booleans) % 10192167

%[r, c] = ind2sub(size(both_booleans), 10192167)
%r =
%        2167
%c =
%        1020
%
%r-c
%ans =
%
%        1147
%
%pent_nums(r) - pent_nums(c)
%ans =
%     5482660
