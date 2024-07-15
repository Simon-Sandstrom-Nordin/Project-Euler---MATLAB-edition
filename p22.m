clc; clear; close all;

name_list = readlines("p22_text.txt");
name_list = strrep(name_list, '"', '');
name_list = name_list.split(',');
name_list = sort(name_list);

total_sum = 0;
for name_index = 1:length(name_list)
    name = name_list{name_index};

    name_sum = 0;
    for letter_index = 1:strlength(name)
       letter = upper(name(letter_index));
       % get the aski value starting from A
       name_sum = name_sum + double(letter) - double('A') + 1;
    end

    total_sum = total_sum + name_index*name_sum;

end

total_sum   % 871198282, correct
