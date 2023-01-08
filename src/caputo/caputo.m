function obj = caputo(h, a, nsamples, lown, highn)
%CAPUTO Creates coefficients for a caputo implementation. 
%   h: timestep
%   a: fractional order
%   nsamples: number of samples
%   lown: zero cutoff sample number
%   highn: one cutoff sample number
%
% Reference:
% Dimitrov, Yuri. (2015). 
% Numerical approximations for fractional differential equations. 
% Journal of Fractional Calculus and Applications. 5. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate the coefficients
coeffs = ones(1, nsamples)/gamma(2-a);
for i = 2: nsamples
    j = i - 1;
    coeffs(i) = ((j+1)^(1-a) - 2*j^(1 - a) + (j-1)^(1-a))/gamma(2-a);
end

obj = struct('h',h,'a',a,'c', coeffs,'ln',lown,'hn',highn);

end

