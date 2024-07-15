clc; close; clear all;

start_day = 0;  % mark indices, Monday is zero, Sunday is six.
sunday_counter = 0;

for year = 1900:2000
    days_in_february = 28;
    if mod(year, 4) == 0 && (mod(year, 400) == 0 || mod(year, 100) ~= 0)
        days_in_february = 29;
    end
    days_in_month = [31 days_in_february 31 30 31 30 31 31 30 31 30 31];

    for month = 1:12
        if year > 1900 && start_day == 6
            sunday_counter = sunday_counter + 1;
        end
        start_day = mod(start_day + days_in_month(month), 7);
    end
end

disp(sunday_counter);
