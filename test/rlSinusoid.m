%% caputoSinusoid test
clear all; close all; clc;

addpath('..\src', '..\src\rl');

%% 
h = 0.001;
a = 0.9;
nsamples = 5000;
fsamples = fof('test', nsamples);
rlobj = rl(h, a, nsamples, 10, 100);

x = 0 : h : 100;
w = pi/10;
y = sin(w*x);
truefo =((w)^a)*sin(w*x + (pi/2)*a);
afoc = zeros(size(truefo));
for i = 1 : numel(x)

    fsamples = pushf(fsamples, y(i));

    afoc(i) = rlcalc(rlobj, fsamples);

end

figure(1);
plot(x, truefo, ':k' ...
    , x, afoc, '--b');
legend('true', 'approximate');