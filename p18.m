clc; clear; close all;

Triangle_matrix = [
75 0  0  0  0  0  0  0  0  0  0  0  0  0  0;
95 64 0  0  0  0  0  0  0  0  0  0  0  0  0;
17 47 82 0  0  0  0  0  0  0  0  0  0  0  0;
18 35 87 10 0  0  0  0  0  0  0  0  0  0  0;
20 04 82 47 65 0  0  0  0  0  0  0  0  0  0;
19 01 23 75 03 34 0  0  0  0  0  0  0  0  0;
88 02 77 73 07 63 67 0  0  0  0  0  0  0  0;
99 65 04 28 06 16 70 92 0  0  0  0  0  0  0;
41 41 26 56 83 40 80 70 33 0  0  0  0  0  0;
41 48 72 33 47 32 37 16 94 29 0  0  0  0  0;
53 71 44 65 25 43 91 52 97 51 14 0  0  0  0;
70 11 33 28 77 73 17 78 39 68 17 57 0  0  0;
91 71 52 38 17 14 91 43 58 50 27 29 48 0  0;
63 66 04 68 89 53 67 30 73 16 69 87 40 31 0;
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23]

test_m = [1, 0, 0; 2, 3, 0; 4, 5, 6]

% one right one down
test_m(1,1) + test_m(2,2) + test_m(3,2)

% for-loop?
record = 0;
col_list = ones(1,length(test_m));
while any(col_list ~= 1:length(test_m))
    disp("hi")
    temp = 0;
    for row = 1:length(test_m)
        temp = temp + test_m(row, col_list(row));
    end

    % go through indexing and see where to increment
    % increment last
    if abs(col_list(end) - col_list(end-1)) < 1
        col_list(end) = col_list(end) + 1;
    else abs(col_list(end-1) - col_list(end-2)) < 1
        col_list(end-1) = col_list(end-1) + 1;
        col_list(end) = col_list(end-1);
    end
    if temp > record
        record = temp;
    end

end

record
% note: (1,1) always
% This solution only works for 3-heighted triangles for now.

% generalisation for triangle matrix
record = 0;
col_list = ones(1,length(Triangle_matrix));
top_index = 2;  % assume nontrivial case of 1 height triangle
while any(col_list ~= 1:length(Triangle_matrix))
    temp = 0;
    for row = 1:length(Triangle_matrix)
        temp = temp + Triangle_matrix(row, col_list(row));
    end

    % go through indexing and see where to increment
    % check for diagonals at bottom
    % GAAAAAAAAAAAAAAH this became too much torture sorry !

    if temp > record
        record = temp;
    end

end

record
