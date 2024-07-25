clc; clear; close all;

max_cycle_check = 1000000;
longest_cycle = 0;
corresponding_d = 0;
for d = 2:999
    
    %number = vpa(1/d, 100000);         % Calculate the decimal expansion with 100 digits precision
    %number_str = char(number);      % Convert the symbolic number to a string
    %char_num_stripped = number_str(3:end);  % Strip off '0.'
    % disp(char_num_stripped);        % Display the stripped number
        
    repeating_decimals = 0;
    for k = 1:max_cycle_check
        if mod(10^k, d) == 1
            repeating_decimals = k;
            break
        end
    end
    if repeating_decimals > longest_cycle
        longest_cycle = repeating_decimals;
        corresponding_d = d;
    end
    d
end

% Detta skulle förklara varför inte d = 983 upptäcks
%10^243
%
%ans =
%
%  1.0000e+243
%
%10^983
%
%ans =
%
%   Inf
%
