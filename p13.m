clc; clear; close all;
fileID = fopen('p13.txt', 'r');

% Read the file line by line using fgets
line = fgets(fileID);
sum_0 = 0;
while line ~= -1
    sum_0 = sum_0 + str2num(line);
    line = fgets(fileID);
end
% Close the file
fclose(fileID);

sum_str = num2str(sum_0);
sum_str = strrep(sum_str, '.','');

disp(sum_str(1:10))
