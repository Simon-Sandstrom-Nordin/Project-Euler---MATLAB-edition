clc; clear; close;

sum = 0;
for pot = 10^9:10^10-1

    %str = "1406357289";
    str = num2str(pot);
    str = char(str);

    disp(num2str(pot) + " " + num2str(sum))
    if p43_is0to9Pandigital(str)
        divisible = true;
        for start = 2:8
            temp = str(start:start+2);
            temp_num = str2num(temp);
            switch start
                case 2
                    if mod(temp_num, 2) ~= 0
                        divisible = false;
                    end
                case 3
                    if mod(temp_num, 3) ~= 0
                        divisible = false;
                    end
                case 4
                    if mod(temp_num, 5) ~= 0
                        divisible = false;
                    end
                case 5
                    if mod(temp_num, 7) ~= 0
                        divisible = false;
                    end
                case 6
                    if mod(temp_num, 11) ~= 0
                        divisible = false;
                    end
                case 7
                    if mod(temp_num, 13) ~= 0
                        divisible = false;
                    end
                case 8
                    if mod(temp_num, 17) ~= 0
                        divisible = false;
                    end
            end
        end
        if divisible
            sum = sum + pot;
        end
        %disp(divisible)
    end
end
disp(pot)
