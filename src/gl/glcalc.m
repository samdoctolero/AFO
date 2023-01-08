function out = glcalc(globj, samples)
%GLCALC Calculates an approximate fractional order operator
%   globj: gl object
%   samples: fof object
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


coeff = transition(globj.ln, globj.hn, samples.count);

out = coeff*(globj.c*samples.samples');
end

