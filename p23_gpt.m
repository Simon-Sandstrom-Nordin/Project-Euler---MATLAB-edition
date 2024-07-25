clc; clear; close all;

% mine has time complexity O(n^3), gpt came up with a much faster
% alternative at O(n^2)

% Find all abundant numbers up to 28123
limit = 28123;
abundantNumbers = [];
for num = 1:limit
    if d(num) > num
        abundantNumbers(end + 1) = num;
    end
end

% Create a boolean array to mark sums of two abundant numbers
canBeWrittenAsSum = false(1, limit);

% Mark all sums of two abundant numbers
for i = 1:length(abundantNumbers)
    for j = i:length(abundantNumbers)
        sumOfTwoAbundants = abundantNumbers(i) + abundantNumbers(j);
        if sumOfTwoAbundants <= limit
            canBeWrittenAsSum(sumOfTwoAbundants) = true;
        else
            break; % No need to check further as the numbers are only getting larger
        end
    end
end

% Sum all numbers that cannot be written as the sum of two abundant numbers
totalSum = sum(find(~canBeWrittenAsSum));
% % find returns an inxex array of non-zero elements

% Display the result
disp(totalSum);

% Function to calculate the sum of proper divisors
function sumDivisors = d(n)
    sumDivisors = 1;
    sqrtN = sqrt(n);
    for i = 2:floor(sqrtN)
        if mod(n, i) == 0
            sumDivisors = sumDivisors + i + n / i;
        end
    end
    if floor(sqrtN)^2 == n
        sumDivisors = sumDivisors - sqrtN; % Subtract the square root if it's a perfect square
    end
end
