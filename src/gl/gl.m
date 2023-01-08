function obj = gl(h,a,nsamples,lown,highn)
%GL Creates coefficients for a Reimann-Louiville implementation.
%   h: timestep
%   a: fractional order
%   nsamples: number of samples
%   lown: zero cutoff sample number
%   highn: one cutoff sample number
%
% Reference:
%I. Petráš, 
% "Fractional-order nonlinear controllers: Design and implementation notes," 
% 2016 17th International Carpathian Control Conference (ICCC), 
% 2016, pp. 579-583, doi: 10.1109/CarpathianCC.2016.7501163.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% calculate the coefficients
coeffs = ones(1, nsamples);
for i = 2 : nsamples
    j = i - 1;
    coeffs(i) = (1 - (1+a)/j)*coeffs(j);
end

coeffs = coeffs/((h^a)*gamma(2-a));
%coeffs = flip(coeffs);

obj = struct('h',h,'a',a,'c', coeffs,'ln',lown,'hn',highn);


end

