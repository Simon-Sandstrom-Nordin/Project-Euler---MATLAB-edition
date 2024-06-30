clc; clear; close all; format long e;

% Lesson learnt from a shitton of pain - you can't modulo a character array
% Well you CAN but it always returns elementwise modulo, cool
% mod('1234567', 2)
% 
% ans =
% 
%      1     0     1     0     1     0     1
% The lack of error message was why I didn't find it, but it had 27 more
% counts which would be 9 inncorrectly added "and"s.
% Also, gpt gave a slick version I'll add in a file next which used switch
% statements instead of if-else if-else "for more readable and
% maintainable code"

count = 11; % one thousand
for iter = 1:999
    number = num2str(iter);
    for place = 1:3
        if length(number) == 3
            if mod(iter, 100) == 0
                count = count + letter_counter_ones_and_hundreds(number(1)) + 7;   % hundred
                break   % then we're done
            else
                count = count + letter_counter_ones_and_hundreds(number(1)) + 7 + 3;   % hundred and
            end
            number = number(2:3);
            continue
        end
        
        % These two if statements do nothing functually, they just grant me
        % peace of mind
        if place == 1 && length(number) ~= 3
            continue
        end
        if place == 2 && length(number) ~= 2
            continue
        end

        if length(number) == 2
            if number == '10'
                count = count + 3;  % ten
                break
            elseif number == '11'
                count = count + 6;  % eleven
                break
            elseif number == '12'
                count = count + 6;  % twelve
                break
            elseif number == '13'
                count = count + 8;  % thirteen
                break
            elseif number == '14'
                count = count + 8;  % fourteen
                break
            elseif number == '15'
                count = count + 7;  % fifteen
                break
            elseif number == '16'
                count = count + 7;  % sixteen
                break
            elseif number == '17'
                count = count + 9;  % seventeen
                break
            elseif number == '18'
                count = count + 8;  % eighteen
                break
            elseif number == '19'
                count = count + 8;  % nineteen
                break
            end
    
            count = count + letter_counter_tens(number(1));
            number = number(2);
            continue
        end
    
        if length(number) == 1
            count = count + letter_counter_ones_and_hundreds(number(1));
            break
        end

    end
end
count

function count = letter_counter_ones_and_hundreds(character)
    count = 0;
    if character == '1'
        count = count + 3;    % one
    elseif character == '2'
        count = count + 3;    % two
    elseif character == '3'
        count = count + 5;    % three
    elseif character == '4'
        count = count + 4;    % four
    elseif character == '5'
        count = count + 4;    % five
    elseif character == '6'
        count = count + 3;    % six
    elseif character == '7'
        count = count + 5;    % seven
    elseif character == '8'
        count = count + 5;    % eight
    elseif character == '9'
        count = count + 4;    % nine
    elseif character == '0'
        count = count + 0;    % 
    end
end

function count = letter_counter_tens(character)
    count = 0;
    % if character == '1'
    %     count = count + 3;    % one
    % won't work here, cuz of twelve, eleven, etc. Teens.
    if character == '2'
        count = count + 6;    % twenty
    elseif character == '3'
        count = count + 6;    % thirty
    elseif character == '4'
        count = count + 5;    % forty
    elseif character == '5'
        count = count + 5;    % fifty
    elseif character == '6'
        count = count + 5;    % sixty
    elseif character == '7'
        count = count + 7;    % seventy
    elseif character == '8'
        count = count + 6;    % eighty
    elseif character == '9'
        count = count + 6;    % ninety
    elseif character == '0'
        count = count + 0;    % 
    end
end
