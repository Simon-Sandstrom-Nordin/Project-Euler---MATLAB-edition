clc; clear; close all; format long e;

count = 11; % one thousand
for iter = 1:999
    number = num2str(iter);
    len = length(number);

    if len == 3
        count = count + letter_counter_ones_and_hundreds(number(1)) + 7; % hundred
        if mod(iter, 100) ~= 0
            count = count + 3; % and
            number = number(2:3);
            len = 2;
        end
    end
    
    if len == 2
        if number(1) == '1'
            count = count + letter_counter_teens(number(2));
            continue;
        else
            count = count + letter_counter_tens(number(1));
            number = number(2);
            len = 1;
        end
    end
    
    if len == 1
        count = count + letter_counter_ones_and_hundreds(number(1));
    end
end
disp(count);

function count = letter_counter_ones_and_hundreds(character)
    switch character
        case '1', count = 3;    % one
        case '2', count = 3;    % two
        case '3', count = 5;    % three
        case '4', count = 4;    % four
        case '5', count = 4;    % five
        case '6', count = 3;    % six
        case '7', count = 5;    % seven
        case '8', count = 5;    % eight
        case '9', count = 4;    % nine
        otherwise, count = 0;   % zero or invalid character
    end
end

function count = letter_counter_tens(character)
    switch character
        case '2', count = 6;    % twenty
        case '3', count = 6;    % thirty
        case '4', count = 5;    % forty (corrected from fourty)
        case '5', count = 5;    % fifty
        case '6', count = 5;    % sixty
        case '7', count = 7;    % seventy
        case '8', count = 6;    % eighty
        case '9', count = 6;    % ninety
        otherwise, count = 0;   % zero or invalid character
    end
end

function count = letter_counter_teens(character)
    switch character
        case '0', count = 3;    % ten
        case '1', count = 6;    % eleven
        case '2', count = 6;    % twelve
        case '3', count = 8;    % thirteen
        case '4', count = 8;    % fourteen
        case '5', count = 7;    % fifteen
        case '6', count = 7;    % sixteen
        case '7', count = 9;    % seventeen
        case '8', count = 8;    % eighteen
        case '9', count = 8;    % nineteen
        otherwise, count = 0;   % invalid character
    end
end
