function [] = unpacks(s)
% unpack struct
% unpacks 1 dimension into workspace that calls this function

assert(isstruct(s) && length(s) == 1, 'Only supply a struct!');

fieldnames = fields(s);
for i=1:length(fieldnames)
    name = fieldnames{i};
    value = s.(name);
    assignin("caller", name, value);
end

end
