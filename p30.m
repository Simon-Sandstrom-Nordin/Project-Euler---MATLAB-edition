clc; clear; close all;

total_sum = 0;
for number = 2:10^6
    num_str = num2str(number);
    cell_array = split(num_str, '');
    cell_array = cell_array(2:end-1);
    digit_sum = 0;
    for cell = 1:length(cell_array)
        digit_sum = digit_sum + str2num(cell_array{cell})^5;
    end

    if digit_sum == number
        disp(number)
        total_sum = total_sum + number;
    end
    
end
disp("Total sum: " + num2str(total_sum))

%>>> 9**5
%59049
%>>> 9**5+9**5
%118098
%>>> 9**5+9**5+9**5
%177147
%>>> 9**5+9**5+9**5+9**5
%236196
%>>> 9**5+9**5+9**5+9**5+9**5
%295245
%>>> 9**5+9**5+9**5+9**5+9**5+9**5
%354294
%>>> 9**5+9**5+9**5+9**5+9**5+9**5+9**5
%413343
%>>>

% The proof that no number will appear after 10^6 goes
% something along the lines of that each added digits adds less than 
% 100 000 to the sum at most, so when we add digits past 10^6 we add
% at least a million. The upper bound may be less in actuality,
% but my proof sets an upper bound of 10^6 since at that point we
% have less than 500 000 in digits ^5 summed
