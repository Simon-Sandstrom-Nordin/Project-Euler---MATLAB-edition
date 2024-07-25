clc; clear; close all;

M = zeros(1001);

start = [501,501];
counter = 1;
M(start(1), start(2)) = counter;
counter = 2;

for layer = 1:500
    
    % right and up
    col = start(2)+layer;
    for row = start(1)+layer-1:-1:start(1)-layer
        %[M, counter] = markM(M, counter, row, col);
        M(row, col) = counter;
        counter = counter + 1;
    end
    
    % left
    row = start(1)-layer;
    for col = start(2)+layer-1:-1:start(2)-layer
        %[M, counter] = markM(M, counter, row, col);
        M(row, col) = counter;
        counter = counter + 1;
    end
    
    % down
    col = start(2)-layer;
    for row = start(1)-layer+1:1:start(1)+layer
        %[M, counter] = markM(M, counter, row, col);
        M(row, col) = counter;
        counter = counter + 1;
    end
    
    % right
    row = start(1)+layer;
    for col = start(2)-layer+1:1:start(2)+layer
        % [M, counter] = markM(M, counter, row, col);
        M(row, col) = counter;
        counter = counter + 1;
    end
 
    layer
end

diag_sum = trace(M) + trace(fliplr(M)) - M(start(1), start(2))
    
%function [M, counter] = markM(M, counter, row, col)
%    M(row, col) = counter;
%    counter = counter + 1;
%end
