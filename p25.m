clc; clear; close all;

% Use symbolic variables to handle very large numbers
a = sym(1);
b = sym(1);

% Set the precision to handle very large numbers
digits(1100); % Set precision slightly higher than needed

% Initialize the index
k = 2;

while true
    % Generate the next Fibonacci number
    new_b = a + b;
    a = b;
    b = new_b;
    
    % Increment the index
    k = k + 1;
    
    % Check the number of digits in the Fibonacci number
    if length(char(b)) >= 1000
        break;
    end
end

% Display the index of the first term with 1000 digits
disp(k);
