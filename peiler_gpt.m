clc; clear; close;

counter = 0;
trian_list = [];
for n = 1:100
    trian_list(end+1) = trian(n);
end

fileID = fopen('p_42_words.txt','r');
formatSpec = '%s';
S1 = fscanf(fileID, formatSpec);
fclose(fileID);

S2 = readlines('p_42_words.txt');
S2 = strrep(S2, '"', '');
S2 = split(S2, ',');

base = double('a') - 1; % Adjust base to 'a' = 1
for word_ind = 1:length(S2)
    % disp(word_ind / length(S2))
    word = S2(word_ind);
    word = lower(word);
    word = convertStringsToChars(word);

    sum_val = 0;
    for char_ind = 1:length(word)
        sum_val = sum_val + double(word(char_ind)) - base;
    end

    if any(trian_list == sum_val)
        counter = counter + 1;
    end
end

counter % Display the final count

function tn = trian(n)
    tn = n * (n + 1) / 2;
end
