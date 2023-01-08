function obj = pushf(obj, f)
%PUSHF Pushes the sample f into the vector of samples.
%   obj: fof object
%   f: sample

obj.samples(2:end) = obj.samples(1:end-1);
obj.samples(1) = f;

if obj.count < obj.nsamples
    obj.count = obj.count + 1;
end

end

