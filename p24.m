clc; clear; close all;

% Define the digits
number = '0123456789';
% lexographic permutations, gpt helped find the right built-in methods

% Generate all permutations
p = perms(number);

% Convert permutations to a cell array of strings
p = cellstr(p);

% Sort the permutations lexicographically
p = sort(p);

% Find the millionth permutation
millionth_permutation = p{1000000};

% Display the result
disp(millionth_permutation);
