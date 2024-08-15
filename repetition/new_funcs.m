clc; clear all; close all;

f = @(x) (x-1)^2;
fminbnd(f, 0, 2)
[x,y,flag,inf] = fminbnd(f,0,2)
fminsearch(f,3)
[x,y,flag, inf] = fminsearch(f,3)
% boken överskrev "inf", vet ej varför. Funkar utan.
