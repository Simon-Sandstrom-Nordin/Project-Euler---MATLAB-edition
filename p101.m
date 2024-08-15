clc; clear; close;

un = @(n) 1 - n + n^2 - n^3 + n^4 - n^5 + n^6 - n^7 + n^8 - n^9 + n^10;

un_points = [];
for u = 1:11
    un_points(end+1) = un(u);
end

sum_fits = vpa(0);
for n = 1:10
    [c] = polyfit(1:n, un_points(1:n), n-1);
    % Predict the next term using this polynomial
    predicted_value = polyval(c, n+1);
    % sum_fits = sum_fits + predicted_value;
    % matches still

    % Compare with the actual value
    actual_value = un_points(n+1);
    
    % Check if the predicted value is incorrect
    if predicted_value ~= actual_value
        % Add the FIT to the sum
        sum_fits = sum_fits + predicted_value;
    end
end
disp(sum_fits)
