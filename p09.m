clc; clear; close all;

for a = 1:1000
    for b = 1:1000
        for c = 1:1000
            if a^2 + b^2 == c^2 && a + b + c == 1000
                disp(a)
                disp(b)
                disp(c)

                disp(a*b*c)
            end
        end
    end
end
