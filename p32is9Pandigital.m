function yes_or_no = p32is9Pandigital(a,b,c)
num_str = [num2str(a), num2str(b), num2str(c)];
% interpretation 1, zeroes are allowed but uncounted
% num_str = erase(num_str, "0");

% interpretation 2, zeroes are disallowed
if ~isempty(strfind(num_str, "0"))
    yes_or_no = 0;
    return
end

if length(num_str) ~= 9
    yes_or_no = 0;
    return
end
cell_array = split(num_str, '');
cell_array = cell_array(2:end-1);
num_array = [];
for cell = 1:length(cell_array)
    num_array(end+1) = cell_array{cell};
end
num_array = unique(num_array);
if length(num_array) == 9
    yes_or_no = 1;  % true
else
    yes_or_no = 0;  % false
end
end
