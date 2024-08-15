clc; clear; close;

counter = 0;
trian_list = [];
for n = 1:100
   trian_list(end+1) = trian(n);
end

fileID = fopen('p_42_words.txt','r');
formatSpec = '%s';
S1 = fscanf(fileID,formatSpec);
fclose(fileID);

S2 = readlines('p_42_words.txt');
S2 = strrep(S2, '"', '');
S2 = split(S2, ',');

base = double('a')-1;
for word_ind = 1:size(S2)
disp(word_ind/length(S2))
word = S2(word_ind);
pause(2)
word = lower(word);
word = convertStringsToChars(word);

sum = 0;
for char = 1:length(word)
    % disp(word(char))
    % disp(double(word(char))-base)
    sum = sum + double(word(char))-base;
end
if any(ismember(sum, trian_list))
counter = counter + 1;
end

end
counter % 165?!?!?! facit says 162

function tn = trian(n)
    tn = n*(n+1)/2;
end
