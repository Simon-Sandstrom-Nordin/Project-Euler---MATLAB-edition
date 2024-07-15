clc; clear; close all;

% doesn't work
% T = readmatrix("p67_triange_file.txt")

clc; clear; close all;

% Open the file
fid = fopen('C:\Users\manip\OneDrive\Documents\MATLAB\12 years a slave\Project Euler - MATLAB edition\p67_triange_file.txt', 'r');

% Initialize a cell array to hold each row of the triangle
triangle = {};

% Read the file line by line
tline = fgetl(fid);
while ischar(tline)
    % Split the line by spaces and convert to numbers
    numbers = str2num(tline); %#ok<ST2NM>
    % Append to the triangle cell array
    triangle{end+1} = numbers;
    % Read the next line
    tline = fgetl(fid);
end

% Close the file
fclose(fid);

% Convert the cell array to a matrix, padding with zeros
maxLength = length(triangle{end});
T = zeros(length(triangle), maxLength);
for i = 1:length(triangle)
    T(i, 1:length(triangle{i})) = triangle{i};
end

% Display the matrix
disp(T);

for row = size(T, 1)-1: -1: 1
    for col = 1:size(T, 2)-1
        if T(row, col) == 0
            continue
        end
        T(row, col) = T(row, col) + max(T(row+1, col), T(row+1, col+1));
    end
end

T(1,1)
