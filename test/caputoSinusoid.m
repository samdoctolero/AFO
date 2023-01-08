%% caputoSinusoid test
clear all; close all; clc;

addpath('..\src', '..\src\caputo');

%% 
h = 0.01;
a = 0.9;
nsamples = 2000;
fsamples = fof('test', nsamples);
cap = caputo(h, a, nsamples, 10, 100);

x = 0 : h : 100;
w = pi/10;
y = sin(w*x);
truefo =((w)^a)*sin(w*x + (pi/2)*a);
afoc = zeros(size(truefo));
for i = 1 : numel(x)

    fsamples = pushf(fsamples, y(i));

    afoc(i) = ccalc(cap, fsamples);

end

figure(1);
plot(x, truefo, ':k' ...
    , x, afoc, '--b');
legend('true', 'approximate');