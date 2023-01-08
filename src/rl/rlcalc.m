function out = rlcalc(rlobj, samples)
%RLCALC Calculates an approximate fractional order operator
%   rlobj: rl object
%   samples: fof object
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


coeff = transition(rlobj.ln, rlobj.hn, samples.count);

out = coeff*(rlobj.c*samples.samples');

end

