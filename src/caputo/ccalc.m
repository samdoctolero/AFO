function out = ccalc(cap, samples)
%CCALC Calculates an approximate fractional order operator
%   cap: caputo object
%   samples: fof object
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

coeff = transition(cap.ln, cap.hn, samples.count);

out = coeff*(cap.c*samples.samples');

end

