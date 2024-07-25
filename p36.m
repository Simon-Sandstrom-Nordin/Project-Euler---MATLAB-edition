clc; clear; close all;

counter = 0;
for c = 1:10^6 - 1
    if pal_check(c)
        counter = counter + c;
    end
end
counter

function pal_bool = pal_check(number)
dec_base = false;
num_str = num2str(number);
num_str_rev = reverse(num_str);
if num_str == num_str_rev
    dec_base = true;
end

bin_base = false;
num_str = dec2base(number,2);
num_str_rev = reverse(num_str);
if num_str == num_str_rev
    bin_base = true;
end

if (bin_base == dec_base) && (dec_base == true)
    pal_bool = true;
else
    pal_bool = false;
end

end
