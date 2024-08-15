clc; close; clear;

st = "";
inte = 1;
while strlength(st) < 10^6
    st = st + num2str(inte);
    inte = inte + 1;
    disp(strlength(st))
end

st = st.split('');
st = st(2:end-1);

prod = 1;
for d = 0:6
    prod = prod * str2num(st(10^d));
end
disp(prod)
