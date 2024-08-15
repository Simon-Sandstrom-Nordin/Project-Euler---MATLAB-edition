function yes_or_no = p43_is0to9Pandigital(num_str)

cell_array = split(num_str, '');
cell_array = cell_array(2:end-1);
num_array = [];
for cell = 1:length(cell_array)
    num_array(end+1) = cell_array{cell} - unicode2native('0');
end
num_array = unique(num_array);
num_array = sort(num_array);
if num_array(end) ~= 9
    yes_or_no = 0;
    return
end

if length(num_array) == 10
    yes_or_no = 1;  % true
else
    yes_or_no = 0;  % false
end
end
