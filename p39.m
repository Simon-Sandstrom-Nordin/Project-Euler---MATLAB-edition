clc; clear; close all;

% O(p^4) too slow
% sol_counter = 0;
% for p = 1:1000
%     for a = 1:1000
%         for b = 1:1000
%             for c = 1:1000
%                 if acos((b^2-a^2-c^2)/(-2*a*c)) == pi/2
%                     sol_counter = sol_counter + 1;
%                 end
%             end
%         end
%     end
% end
% 
% disp(sol_counter)
% a,b > p redundant

record = 0;
record_p = 0;

for p = 1:1000
    sol_counter = 0;
    for a = 1:p
        for c = 1:p-a
            b = sqrt(a^2 + c^2);
            if ~mod(b, 1) && a + b + c == p
                sol_counter = sol_counter + 1;
            end
        end
    end

    % /2 to account for congruent triangles
    sol_counter = sol_counter / 2;
    if sol_counter > record
        record = sol_counter;
        record_p = p;
    end
end
disp(record)
disp(record_p)
