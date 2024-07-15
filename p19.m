clc; close; clear all;

start_day = 0;  % mark indices, monday is zero, sunday is six.
sunday_counter = 0;
for year = 1900:2000
    days_in_year = 365;
    days_in_febuary = 28;

    if mod(year, 4) == 0 && any([mod(year,400) == 0, mod(year,100) ~= 0]) 
        days_in_year = days_in_year + 1;
        days_in_febuary = days_in_febuary + 1;
    end
    for day = 1:days_in_year
        if day >= 1 && day <= 31    % january
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 1 == day);
        elseif day > 31 && day <= 31 + days_in_febuary    % february
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31 + 1 == day);
        elseif day > 31 + days_in_febuary && day <= 31*2 + days_in_febuary    % march
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31 + days_in_febuary + 1 == day);
        elseif day > 31*2 + days_in_febuary && day <=  31*2 + days_in_febuary + 30   % april
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*2 + days_in_febuary + 1 == day);
        elseif day > 31*2 + days_in_febuary + 30 && day <=  31*3 + days_in_febuary + 30   % may
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*2 + days_in_febuary + 30 + 1 == day);
        elseif day > 31*3 + days_in_febuary + 30 && day <=  31*3 + days_in_febuary + 30*2   % june
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*3 + days_in_febuary + 30 + 1 == day);
        elseif day > 31*3 + days_in_febuary + 30*2 && day <=  31*4 + days_in_febuary + 30*2  % july
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*3 + days_in_febuary + 30*2 + 1 == day);   
        elseif day > 31*4 + days_in_febuary + 30*2 && day <=  31*5 + days_in_febuary + 30*2  % august   
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*4 + days_in_febuary + 30*2 + 1 == day);
        elseif day > 31*5 + days_in_febuary + 30*2 && day <=  31*5 + days_in_febuary + 30*3  % september   
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*5 + days_in_febuary + 30*2 + 1 == day);
        elseif day > 31*5 + days_in_febuary + 30*3 && day <=  31*6 + days_in_febuary + 30*3  % october
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, 31*5 + days_in_febuary + 30*3 + 1 == day);
        elseif day > 31*6 + days_in_febuary + 30*3 && day <=  31*6 + days_in_febuary + 30*4  % november
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day,  31*6 + days_in_febuary + 30*3 + 1 == day);
        elseif day > 31*6 + days_in_febuary + 30*4 && day <=  31*7 + days_in_febuary + 30*4  % december
            [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day,  31*6 + days_in_febuary + 30*4 + 1 == day);
        end
    end

    if year == 1900 % originally this was set in the beginning of the loop, giving 2 invalid sundays from year 1900.
        sunday_counter = 0;
    end

end

function [sunday_counter, start_day] = increment_sunday_counter(sunday_counter, start_day, month_start)
    if mod(start_day, 7) == 6 && month_start
        sunday_counter = sunday_counter + 1;
    end
    start_day = start_day + 1;
end
