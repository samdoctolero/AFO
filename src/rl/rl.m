function obj = rl(h,a,nsamples,lown,highn)
%RL Creates coefficients for a Reimann-Louiville implementation.
%   h: timestep
%   a: fractional order
%   nsamples: number of samples
%   lown: zero cutoff sample number
%   highn: one cutoff sample number
%
% Reference:
% Adams, Matthew. (2019). 
% differint: A Python Package for Numerical Fractional Calculus. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate the coefficients
coeffs = 1 : nsamples;
coeffs(end) = 1;
if nsamples > 1
    k = coeffs(1:end - 1);
    coeffs(1:end - 1) = (nsamples - k + 1).^(1-a) ...
        + (nsamples-k-1).^(1-a) - 2*(nsamples-k).^(1-a);
end

coeffs = coeffs/((h^a)*gamma(2-a));
coeffs = flip(coeffs);

obj = struct('h',h,'a',a,'c', coeffs,'ln',lown,'hn',highn);


end

