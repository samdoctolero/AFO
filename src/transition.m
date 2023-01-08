function c = transition(lo, hi, x)
%TRANSITION Summary of this function goes here
%   Detailed explanation goes here


if x >= hi
    c = 1.0;
elseif x <= lo
    c = 0.0;
else
    denom = hi - lo;
    xnorm = (x - lo)/denom;
    c = 0.5*cos(pi*xnorm) + 0.5;
    c = 1 - c;
end


end

