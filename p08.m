clc; clear; close all;

fileID = fopen('p08.txt', 'r');

% Initialize an empty string to hold the entire content
sentence = "";

% Read the file line by line using fgets
line = fgets(fileID);
while ischar(line)
    sentence = sentence + line; % Concatenate each line to the sentence
    line = fgets(fileID);
end
% Close the file
fclose(fileID);

split_sen = split(sentence, '');
split_sen = split_sen(2:end);
split_sen = split_sen(1:end-1);

split_sen = str2double(split_sen);

% Create a logical index for non-NaN entries
nonNaNIndex = ~isnan(split_sen);
% Use the logical index to filter out NaN entries
split_sen = split_sen(nonNaNIndex);

max_num = 0;
for index = 1:length(split_sen)-13
    number_list = split_sen(index:index + 12);
    prod_var = prod(number_list);

    if prod_var > max_num
        max_num = prod_var;
    end
end
disp(max_num)
