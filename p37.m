clc; clear; close all;

% interesting paper on the finiteness of these:
% https://www.ams.org/journals/mcom/1977-31-137/S0025-5718-1977-0427213-2/S0025-5718-1977-0427213-2.pdf
% They seemed to have used the prime number theorem to make a probability 
% estimate that the chance of more primes occuring is vanishing... or some
% shit I won't read this atm, not because I can't or anything.

% oh shit seems you can make a proof by exhaustion
% by listing all left and right truncatable primes 
% of a given length n at which point n+1 left and right truncatable
% primes cannot exist as you'd have to delete the leading/trailing digit
% and get a l/r truncatable prime

counter = 0;
sum = 0;
for k = 10:73939133
    if lr_trun(k)
        % disp(k)
        sum = sum + k;
        counter = counter + 1;
    end
    k
end
sum     % 748317, correct as per facit with an upper for-loop bound of a million, which is good enough for me
        % since as per the article the smallest of left or right trunc
        % primes is 73939133 which is quite a long foor loop
        % check... ah fuck it we'll do a check till there in the loop.
counter % 11 as the limit given

function bool = lr_trun(num)
bool = true;

% right truncation
str_num = num2str(num);
for R = 1:length(str_num)
    trun_str = str_num(R:end);
    if ~isprime(str2double(trun_str))
        bool = false;
        return
    end
end

% left truncation
for L = 0:length(num2str(num))-1
    trun_str = str_num(1:end-L);
    if ~isprime(str2double(trun_str))
        bool = false;
        return
    end
end
end
