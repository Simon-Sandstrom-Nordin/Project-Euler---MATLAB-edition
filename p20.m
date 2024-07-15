clc; clear; close all;

% Calculate 100! with high precision
n = vpa(factorial(sym(100)), 158);
% 100! =  9.3326e+157, so 158 digits get them all

% Convert the result to a string with full digits
n_str = char(n);

% Initialize the sum to zero
n_sum = 0;

% Loop through each character in the string
for char_index = 1:length(n_str)
    % Check if the character is a digit
    if isstrprop(n_str(char_index), 'digit')
        % Convert each character to a number and add to the sum
        n_sum = n_sum + str2double(n_str(char_index));
    end
end

% Display the sum of the digits
disp(n_sum)
