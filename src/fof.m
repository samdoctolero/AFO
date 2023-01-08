function obj = fof(name, nsamples)
%FOF Fractional Order Function
%Container for the sample of variables. 
%   name: name or description of the function
%   nsamples: number of samples for the function. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


obj = struct('name', name ...
    , 'samples', zeros(1, nsamples) ...
    , 'count', 0 ...
    , 'nsamples', nsamples);

end

