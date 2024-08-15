clc; clear; close all;

max = 0;
for number = 1:10^5 % exceedingly high upper bound but works
    % example, generalize to n > 1
    % m1 = num2str(number * 1);
    % m2 = num2str(number * 2);
    % m3 = num2str(number * 3);
    % m4 = num2str(number * 4);
    % m5 = num2str(number * 5);
    % 
    % num_str = m1 + m2 + m3 + m4 + m5;

    num_str = "";
    num_str = num_str + num2str(number);
    for n = 2:10 % EHUB
        num_str = num_str + num2str(number * n);
        if strlength(num_str) >= 9  % new knowledge: strlength() to return number of characters in a string
            break
        end
    end

    % looks dumb, but converts "" to ''.
    % in more detailed words, an empty string to an empty character array
    num_int = str2num(num_str);
    num_char = num2str(num_str);

    if p38is9Pandigital(num_char) % matlab treats any non-zero number as true, and only zero as false, gpt claims
        if max < str2double(num_char)
            max = num_char;
        end
    end

    number
end

function yes_or_no = p38is9Pandigital(num_str)


% zeroes are disallowed
if ~isempty(strfind(num_str, "0"))
    yes_or_no = 0;
    return
end

if length(num_str) ~= 9
    yes_or_no = 0;
    return
end

cell_array = split(num_str, '');
cell_array = cell_array(2:end-1);
num_array = [];
for cell = 1:length(cell_array)
    num_array(end+1) = cell_array{cell};
end
num_array = unique(num_array);
if length(num_array) == 9
    yes_or_no = 1;  % true
else
    yes_or_no = 0;  % false
end
end
